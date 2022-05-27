package models

type Achievement struct {
	Id          int    `json:"id"`
	Description string `json:"description"`
	Goals       []int  `json:"goals"`
}
