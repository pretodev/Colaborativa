package functions

import (
	"encoding/json"
	"github.com/pretodev/colaborativa/functions/domain"
	"net/http"
)

type RequestBody struct {
	Command string                 `json:"command"`
	Args    map[string]interface{} `json:"args"`
}

func ExecCommand(w http.ResponseWriter, r *http.Request) {
	if r.Method != "POST" {
		http.Error(w, "Execução de comandos só podem ser tipo POST.", http.StatusMethodNotAllowed)
		return
	}

	var data RequestBody
	err := json.NewDecoder(r.Body).Decode(&data)
	if err != nil {
		http.Error(w, "Escopo de execução incorretos. Verifique os parâmetros e tente novamente.", http.StatusBadRequest)
		return
	}
	command := domain.Command{Name: data.Command, Args: data.Args, UserId: "123456"}
	err = command.Run()

	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
	}

	w.WriteHeader(http.StatusOK)
	w.Write([]byte("Comando executado com sucesso."))
}
