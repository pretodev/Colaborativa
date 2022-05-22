package repositories

import (
	"context"
	"errors"
	"firebase.google.com/go/db"
	"github.com/pretodev/colaborativa/functions/models"
	"time"
)

type FeelingRepo struct {
	database *db.Client
}

func NewFeelingRepo(database *db.Client) *FeelingRepo {
	return &FeelingRepo{
		database: database,
	}
}

func (repo *FeelingRepo) SaveToday(ctx context.Context, userId string, feeling models.Feeling) error {
	key := time.Now().Format("2006-01-02")
	ref := repo.database.NewRef("users/" + userId + "/feelings/" + key)
	var savedFeeling *models.Feeling
	err := ref.Get(ctx, &savedFeeling)
	if err != nil {
		return err
	}
	if savedFeeling != nil {
		return errors.New("feeling already saved for today")
	}
	err = ref.Set(ctx, feeling)
	return err
}

func (repo FeelingRepo) FromToday(ctx context.Context, userId string) (*models.Feeling, error) {
	key := time.Now().Format("2006-01-02")
	ref := repo.database.NewRef("users/" + userId + "/feelings/" + key)
	var feeling *models.Feeling
	err := ref.Get(ctx, &feeling)
	if err != nil {
		return nil, err
	}
	return feeling, nil
}
