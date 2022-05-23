package repositories

import (
	"cloud.google.com/go/firestore"
	"context"
	"errors"
	"github.com/pretodev/colaborativa/functions/models"
)

var ErrProfileNotFound = errors.New("profile not found")

type ProfileRepo struct {
	firestore *firestore.Client
}

func NewProfileRepo(firestore *firestore.Client) *ProfileRepo {
	return &ProfileRepo{
		firestore: firestore,
	}
}

func (repo *ProfileRepo) SaveProfile(ctx context.Context, userId string, profile models.Profile) error {
	ref := repo.firestore.Collection("users").Doc(userId)
	_, err := ref.Set(ctx, profile)
	return err
}

func (repo *ProfileRepo) FromId(ctx context.Context, userId string) (*models.Profile, error) {
	doc, err := repo.firestore.Collection("users").Doc(userId).Get(ctx)
	if err != nil {
		return nil, err
	}
	if !doc.Exists() {
		return nil, ErrProfileNotFound
	}
	profile := models.Profile{}
	err = doc.DataTo(&profile)
	if err != nil {
		return nil, err
	}
	return &profile, nil
}
