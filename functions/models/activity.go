package models

type UserActivity struct {
	ActivityId string `json:"activityId" validate:"required"`
}
