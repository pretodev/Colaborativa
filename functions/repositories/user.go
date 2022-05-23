package repositories

import (
	"cloud.google.com/go/firestore"
	"context"
	"errors"
	"github.com/pretodev/colaborativa/functions/models"
)

var ErrProfileNotFound = errors.New("profile not found")

type UserRepo struct {
	firestore *firestore.Client
}

func NewUserRepo(firestore *firestore.Client) *UserRepo {
	return &UserRepo{
		firestore: firestore,
	}
}

func (repo *UserRepo) Save(ctx context.Context, userId string, profile models.User) error {
	ref := repo.firestore.Collection("users").Doc(userId)
	_, err := ref.Set(ctx, profile)
	return err
}

func (repo *UserRepo) FromId(ctx context.Context, userId string) (*models.User, error) {
	doc, err := repo.firestore.Collection("users").Doc(userId).Get(ctx)
	if err != nil {
		return nil, err
	}
	if !doc.Exists() {
		return nil, ErrProfileNotFound
	}
	profile := models.User{}
	err = doc.DataTo(&profile)
	if err != nil {
		return nil, err
	}
	return &profile, nil
}
