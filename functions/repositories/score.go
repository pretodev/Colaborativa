package repositories

import (
	"cloud.google.com/go/firestore"
	"context"
	"errors"
	"firebase.google.com/go/db"
	"fmt"
	"github.com/pretodev/colaborativa/functions/models"
	"time"
)

var scoreTable = map[models.Action]int{
	models.ActionSaveFeeling:         30,
	models.ActionRegisterDiaryAccess: 10,
	models.ActionSendMessage:         5,
	models.ActionCheckActivity:       50,
}

type ScoreRepo struct {
	firestore *firestore.Client
	database  *db.Client
}

func (repo ScoreRepo) save(ctx context.Context, user models.User, score int, key string) error {
	ref := repo.database.NewRef("score/" + key + "/" + user.Id)
	var dayScore *models.Score
	err := ref.Get(ctx, &dayScore)
	if err != nil {
		return err
	}
	fmt.Print(dayScore)
	newTotal := score
	if dayScore != nil {
		newTotal = dayScore.Total + score
	}
	err = ref.Set(ctx, &models.Score{
		Name:  user.Name,
		Total: newTotal,
	})
	return err
}

func NewScoreRepo(firestore *firestore.Client, database *db.Client) *ScoreRepo {
	return &ScoreRepo{
		firestore: firestore,
		database:  database,
	}
}

func (repo ScoreRepo) ScoreAction(ctx context.Context, user models.User, action models.Action) error {
	score := scoreTable[action]
	if score == 0 {
		return errors.New("invalid action")
	}
	daykey := time.Now().Format("2006-01-02")
	err := repo.save(ctx, user, score, fmt.Sprintf("day/%s", daykey))
	if err != nil {
		return err
	}
	year, week := time.Now().UTC().ISOWeek()
	err = repo.save(ctx, user, score, fmt.Sprintf("week/%d-%d", year, week))
	if err != nil {
		return err
	}
	monthkey := time.Now().Format("2006-01")
	err = repo.save(ctx, user, score, fmt.Sprintf("month/%s", monthkey))
	if err != nil {
		return err
	}
	return nil
}
