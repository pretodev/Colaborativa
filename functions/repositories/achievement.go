package repositories

import (
	"cloud.google.com/go/firestore"
	"context"
	"firebase.google.com/go/db"
	"fmt"
	"github.com/pretodev/colaborativa/functions/models"
)

var achievementTable = map[models.Action]int{
	models.ActionSaveFeeling:         0,
	models.ActionRegisterDiaryAccess: 1,
	models.ActionSendMessage:         2,
	models.ActionCheckActivity:       3,
}

type AchievementRepo struct {
	firestore *firestore.Client
	database  *db.Client
}

func NewAchievementRepo(firestore *firestore.Client, database *db.Client) *AchievementRepo {
	return &AchievementRepo{
		firestore: firestore,
		database:  database,
	}
}

func (repo AchievementRepo) CheckGoal(ctx context.Context, user models.User, action models.Action) error {
	achievementPosition := achievementTable[action]
	uKey := fmt.Sprintf("users/%s/achievements/%d", user.Id, achievementPosition)
	var points *int
	err := repo.database.NewRef(uKey).Get(ctx, &points)
	if err != nil {
		return err
	}
	newPoints := 1
	if points != nil {
		newPoints = *points + 1
	}
	err = repo.database.NewRef(uKey).Set(ctx, newPoints)
	if err != nil {
		return err
	}
	return nil
}
