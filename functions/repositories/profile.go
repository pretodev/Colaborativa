package repositories

import (
	"context"
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
