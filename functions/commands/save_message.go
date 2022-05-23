package commands

import (
	"context"
	"github.com/pretodev/colaborativa/functions/models"
	"github.com/pretodev/colaborativa/functions/repositories"
	"time"
)

type SaveMessageCommand func(ctx context.Context, emitterId string, content string) error

func NewSaveMessageCommand(messageRepo *repositories.MessageRepo, profileRepo *repositories.UserRepo) SaveMessageCommand {
	return func(ctx context.Context, emitterId string, content string) error {
		profile, err := profileRepo.FromId(ctx, emitterId)
		if err != nil {
			return err
		}
		if profile == nil {
			return repositories.ErrProfileNotFound
		}
		message := models.Message{
			Content: content,
			Emitter: models.MessageEmitter{
				Id:   emitterId,
				Name: profile.Name,
			},
			Timestamp: time.Now(),
		}
		return messageRepo.Add(ctx, message)
	}
}
