package repositories

import (
	"context"
	"errors"
	"firebase.google.com/go/db"
	"github.com/pretodev/colaborativa/functions/models"
	"log"
	"time"
)

type ActivityRepo struct {
	database *db.Client
}

func NewActivityRepo(database *db.Client) *ActivityRepo {
	return &ActivityRepo{
		database: database,
	}
}

func (repo ActivityRepo) Check(ctx context.Context, userId string, activity models.UserActivity) error {
	ref := repo.database.NewRef("activities/" + activity.ActivityId)
	var globalActivity interface{}
	err := ref.Get(ctx, &globalActivity)
	if err != nil {
		return err
	}
	if globalActivity == nil {
		return errors.New("activity not found")
	}
	key := time.Now().Format("2006-01-02")
	ref = repo.database.NewRef("users/" + userId + "/activities/" + key + "/" + activity.ActivityId)
	var checked bool
	err = ref.Get(ctx, &checked)
	if err != nil {
		return err
	}
	if checked {
		return errors.New("activity already checked today")
	}
	err = ref.Set(ctx, true)
	return err
}

func (repo ActivityRepo) IsDateChecked(ctx context.Context, user models.User, t time.Time) (bool, error) {
	var activities []interface{}
	err := repo.database.NewRef("activities").Get(ctx, &activities)
	if err != nil {
		return false, err
	}
	countActivities := len(activities)
	key := t.Format("2006-01-02")
	err = repo.database.NewRef("users/"+user.Id+"/activities/"+key).Get(ctx, &activities)
	if err != nil {
		return false, err
	}
	countChecked := 0
	for _, activity := range activities {
		if activity != nil {
			countChecked++
		}
	}
	log.Println("countActivities:", countActivities, "countChecked:", countChecked)
	if countActivities != countChecked {
		return false, nil
	}
	return true, nil
}
