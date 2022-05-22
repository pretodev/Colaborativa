package helpers

import (
	"encoding/json"
	"errors"
	"net/http"
)

func ParsePost(r *http.Request, data interface{}) (error, int) {
	if r.Method != "POST" {
		return errors.New("Execução de comandos só podem ser tipo POST"), http.StatusMethodNotAllowed
	}
	err := json.NewDecoder(r.Body).Decode(&data)
	if err != nil {
		return errors.New("Escopo de execução incorretos. Verifique os parâmetros e tente novamente"), http.StatusBadRequest
	}
	return nil, 0
}
