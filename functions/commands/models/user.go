package models

type User struct {
	ID        int    `json:"id"`
	Name      string `json:"name"`
	Phone     string `json:"phone"`
	Birthday  string `json:"birthday"`
	CreatedAt string `json:"created_at"`
	UpdatedAt string `json:"updated_at"`
}
