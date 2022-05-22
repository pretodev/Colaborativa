package models

type Feeling struct {
	Description string `json:"description" validate:"required"`
	Category    string `json:"category" validate:"required"`
}
