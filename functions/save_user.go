package functions

import (
	"context"
	"fmt"
	"github.com/pretodev/colaborativa/functions/helpers"
	"github.com/pretodev/colaborativa/functions/models"
	"net/http"
)

func SaveUser(w http.ResponseWriter, r *http.Request) {
	ctx := context.Background()
	var editingUser models.EditingUser
	if err, code := helpers.ParsePost(r, &editingUser); code >= 400 {
		http.Error(w, fmt.Sprintf("%s", err), code)
		return
	}
	if err := validate.Struct(editingUser); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusBadRequest)
		return
	}
	if err := userRepo.SaveUser(ctx, editingUser); err != nil {
		http.Error(w, fmt.Sprintf("%e", err), http.StatusInternalServerError)
		return
	}
	w.WriteHeader(http.StatusOK)
	w.Write([]byte("Comando executado com sucesso."))
}
