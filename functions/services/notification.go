package services

import (
	"context"
	"firebase.google.com/go/messaging"
)

type NotificationService struct {
	messenger *messaging.Client
}

func NewNotificationService(messenger *messaging.Client) *NotificationService {
	return &NotificationService{
		messenger: messenger,
	}
}

func (serv NotificationService) SendTo(ctx context.Context, content string, tokens []string) error {
	msg := &messaging.MulticastMessage{
		Notification: &messaging.Notification{
			Title: "Nova Mensagem",
			Body:  content,
		},
		Tokens: tokens,
	}
	_, err := serv.messenger.SendMulticast(ctx, msg)
	return err

}
