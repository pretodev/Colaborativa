package repositories

import (
	"cloud.google.com/go/firestore"
	"context"
	"errors"
	"firebase.google.com/go/db"
	"github.com/pretodev/colaborativa/functions/models"
	"time"
)

var ErrProfileNotFound = errors.New("profile not found")

type UserRepo struct {
	firestore *firestore.Client
	database  *db.Client
}

func NewUserRepo(firestore *firestore.Client, database *db.Client) *UserRepo {
	return &UserRepo{
		firestore: firestore,
		database:  database,
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
	profile.Id = userId
	if err != nil {
		return nil, err
	}
	return &profile, nil
}

func (repo UserRepo) AddDeviceToken(ctx context.Context, userId string, deviceToken string) error {
	ref := repo.firestore.Collection("users").Doc(userId)
	_, err := ref.Update(ctx, []firestore.Update{{Path: "deviceTokens", Value: firestore.ArrayUnion(deviceToken)}})
	return err
}

func (repo *UserRepo) AddAccess(ctx context.Context, userId string, time time.Time) error {
	accessTimeStr := time.Format("2006-01-02 15:04:05")
	ref := repo.database.NewRef("users/" + userId + "/access")
	_, err := ref.Push(ctx, accessTimeStr)
	return err
}

func (repo UserRepo) LastAccess(ctx context.Context, userId string) (*time.Time, error) {
	ref := repo.database.NewRef("users/" + userId + "/access")
	var lastAccess map[string]string
	err := ref.OrderByValue().LimitToLast(1).Get(ctx, &lastAccess)
	if err != nil {
		return nil, err
	}
	v := make([]string, 0, len(lastAccess))
	for _, value := range lastAccess {
		v = append(v, value)
	}
	if len(v) == 0 {
		return nil, nil
	}
	lastAccessTime, err := time.Parse("2006-01-02 15:04:05", v[0])
	if err != nil {
		return nil, err
	}
	return &lastAccessTime, nil
}
