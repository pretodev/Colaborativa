package repositories

import (
	"context"
	"firebase.google.com/go/db"
	"github.com/pretodev/colaborativa/functions/models"
)

type UserRepo struct {
	database *db.Client
}

func NewUserRepo(database *db.Client) *UserRepo {
	return &UserRepo{
		database: database,
	}
}

func (repo *UserRepo) SaveUser(ctx context.Context, user models.EditingUser) error {
	ref := repo.database.NewRef("users/" + user.Id + "/profile")
	err := ref.Set(ctx, user)
	return err

}
