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
	gKey := fmt.Sprintf("achievements/%d", achievementPosition)
	var archive models.Achievement
	err := repo.database.NewRef(gKey).Get(ctx, &archive)
	if err != nil {
		return err
	}

	uKey := fmt.Sprintf("users/%s/achievements/%d", user.Id, achievementPosition)
	var userAchievement *models.UserAchievement
	err = repo.database.NewRef(uKey).Get(ctx, &userAchievement)
	if err != nil {
		return err
	}
	if userAchievement.Level == len(archive.Goals) {
		return nil
	}
	newPoints := 1
	if userAchievement != nil {
		newPoints = userAchievement.Points + 1
		if newPoints >= archive.Goals[userAchievement.Level] {
			userAchievement.Level++
			userAchievement.Points = 0
		} else {
			userAchievement.Points = newPoints
		}
	}
	err = repo.database.NewRef(uKey).Set(ctx, userAchievement)
	if err != nil {
		return err
	}
	return nil
}
