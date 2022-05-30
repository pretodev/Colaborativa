package models

import "time"

const NewUserMessage = "Dê as boas vindas ao usuário %s"

var AdminUser = User{
	Id:   "admin",
	Name: "ColaborAtiva",
}

type UserMessage struct {
	Content string `json:"content" validate:"required"`
	To      string `json:"to"`
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
