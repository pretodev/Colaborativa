package repositories

import (
	"context"
	"firebase.google.com/go/db"
	"github.com/pretodev/colaborativa/functions/models"
)

type MessageRepo struct {
	database *db.Client
}

func NewMessageRepo(database *db.Client) *MessageRepo {
	return &MessageRepo{
		database: database,
	}
}

func (repo MessageRepo) Add(ctx context.Context, message models.Message) error {
	ref := repo.database.NewRef("messages")
	_, err := ref.Push(ctx, &message)
	return err
}
