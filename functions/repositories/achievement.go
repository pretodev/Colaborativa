package repositories

import (
	"cloud.google.com/go/firestore"
	"context"
	"firebase.google.com/go/db"
	"fmt"
	"github.com/pretodev/colaborativa/functions/models"
	"log"
)

var achievementTable = map[models.UpAchievement]int{
	models.UpAccessDaily:            1,
	models.UpCompleteActivityDaily:  0,
	models.UpCompleteActivityWeekly: 2,
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

func (repo AchievementRepo) CheckGoal(ctx context.Context, user models.User, action models.UpAchievement) (bool, error) {
	achievementPosition := achievementTable[action]
	log.Println("achievementPosition", achievementPosition)
	gKey := fmt.Sprintf("achievements/%d", achievementPosition)
	var archive models.Achievement
	err := repo.database.NewRef(gKey).Get(ctx, &archive)
	if err != nil {
		return false, err
	}

	uKey := fmt.Sprintf("users/%s/achievements/%d", user.Id, achievementPosition)
	var userAchievement *models.UserAchievement
	err = repo.database.NewRef(uKey).Get(ctx, &userAchievement)
	if err != nil {
		return false, err
	}
	levelUp := false
	newPoints := 1
	if userAchievement != nil {
		if userAchievement.Level == len(archive.Goals) {
			return false, nil
		}
		newPoints = userAchievement.Points + 1
		if newPoints >= archive.Goals[userAchievement.Level] {
			userAchievement.Level++
			userAchievement.Points = 0
			levelUp = true
		} else {
			userAchievement.Points = newPoints
		}
	} else {
		userAchievement = &models.UserAchievement{
			Points: newPoints,
			Level:  0,
		}
	}
	err = repo.database.NewRef(uKey).Set(ctx, userAchievement)
	if err != nil {
		return false, err
	}
	return levelUp, nil
}
