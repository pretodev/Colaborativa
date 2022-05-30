package models

type UpAchievement int64

const (
	UpAccessDaily UpAchievement = iota
	UpCompleteActivityDaily
	UpCompleteActivityWeekly
)

type Achievement struct {
	Id          int    `json:"id"`
	Description string `json:"description"`
	Goals       []int  `json:"goals"`
}

type UserAchievement struct {
	Points int `json:"points"`
	Level  int `json:"level"`
}
