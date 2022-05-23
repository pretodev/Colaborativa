package models

import "time"

type UserMessage struct {
	Content string `json:"content" validate:"required"`
}

type MessageEmitter struct {
	Id   string `json:"id" validate:"required"`
	Name string `json:"name" validate:"required"`
}

type Message struct {
	Timestamp time.Time      `json:"timestamp" validate:"required"`
	Content   string         `json:"content" validate:"required"`
	Emitter   MessageEmitter `json:"emitter" validate:"required"`
}
