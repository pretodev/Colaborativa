package models

type Affiliate struct {
	MentorId string `json:"mentorId" validate:"required"`
}
