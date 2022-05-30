package models

import "time"

type User struct {
	Id        string    `json:"id"`
	Name      string    `json:"name" validate:"required" firestore:"name" `
	Gender    string    `json:"gender" validate:"oneof='male' 'female' 'others'" firestore:"gender"`
	Ethnicity string    `json:"ethnicity" validate:"oneof='white' 'black' 'brown' 'yellow' 'indigenous'" firestore:"ethnicity"`
	Birthday  time.Time `json:"birthday" validate:"required" firestore:"birthday"`
	Tokens    []string  `firestore:"tokens"`
}

type EditingUser struct {
	Name      string    `json:"name" validate:"required" firestore:"name" `
	Gender    string    `json:"gender" validate:"oneof='male' 'female' 'others'" firestore:"gender"`
	Ethnicity string    `json:"ethnicity" validate:"oneof='white' 'black' 'brown' 'yellow' 'indigenous'" firestore:"ethnicity"`
	Birthday  time.Time `json:"birthday" validate:"required" firestore:"birthday"`
}
