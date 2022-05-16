package commands

type commandContext struct {
	params map[string]interface{}
	userId string
}

type commandHandler func(commandContext) error

var commands = map[string]commandHandler{
	"save_user": SaveUser,
}

type Command struct {
	Name   string
	Args   map[string]interface{}
	UserId string
}

func (c Command) Run() error {
	return commands[c.Name](commandContext{
		params: c.Args,
		userId: c.UserId,
	})
}
