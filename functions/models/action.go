package models

type Action int64

const (
	ActionSaveFeeling Action = iota
	ActionRegisterDiaryAccess
	ActionSendMessage
	ActionCheckActivity
)
