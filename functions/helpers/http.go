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
	if data != nil {
		err := json.NewDecoder(r.Body).Decode(&data)
		if err != nil {
			return errors.New("Escopo de execução incorretos. Verifique os parâmetros e tente novamente"), http.StatusBadRequest
		}
	}
	return nil, 0
}

func UserId(r *http.Request, id *string) error {
	userId := r.Header.Get("X-User-Id")
	if userId == "" {
		return errors.New("X-User-ActivityId não encontrado")
	}
	*id = userId
	return nil
}

func Response(w http.ResponseWriter, msg string, code int) {
	w.Header().Set("Content-Type", "plain/text")
	w.WriteHeader(code)
	w.Write([]byte(msg))
}
