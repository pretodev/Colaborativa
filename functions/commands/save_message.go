package commands

import (
	"context"
	"github.com/pretodev/colaborativa/functions/models"
	"github.com/pretodev/colaborativa/functions/repositories"
	"time"
)

type SaveMessageCommand func(ctx context.Context, user models.User, content string) error

func NewSaveMessageCommand(messageRepo *repositories.MessageRepo) SaveMessageCommand {
	return func(ctx context.Context, user models.User, content string) error {
		message := models.Message{
			Content: content,
			Emitter: models.MessageEmitter{
				Id:   user.Id,
				Name: user.Name,
			},
			Timestamp: time.Now(),
		}
		return messageRepo.Add(ctx, message)
	}
}
