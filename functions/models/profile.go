package models

type Profile struct {
	Name      string `json:"name" validate:"required"`
	Phone     string `json:"phone" validate:"required"`
	Gender    string `json:"gender" validate:"oneof='male' 'female' 'others'"`
	Ethnicity string `json:"ethnicity" validate:"oneof='white' 'black' 'brown' 'yellow' 'indigenous'"`
}
