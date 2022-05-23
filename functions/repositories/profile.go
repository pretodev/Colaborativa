package repositories

import (
	"context"
	"errors"
	"firebase.google.com/go/db"
	"github.com/pretodev/colaborativa/functions/models"
)

type ProfileRepo struct {
	database *db.Client
}

func NewProfileRepo(database *db.Client) *ProfileRepo {
	return &ProfileRepo{
		database: database,
	}
}

func (repo *ProfileRepo) SaveProfile(ctx context.Context, userId string, profile models.Profile) error {
	ref := repo.database.NewRef("users/" + userId + "/profile")
	err := ref.Set(ctx, profile)
	return err

}

func (repo *ProfileRepo) FromId(ctx context.Context, userId string) (*models.Profile, error) {
	ref := repo.database.NewRef("users/" + userId + "/profile")
	var profile *models.Profile
	err := ref.Get(ctx, &profile)
	if err != nil {
		return nil, err
	}
	if profile == nil {
		return nil, errors.New("profile not found")
	}
	return profile, nil
}
