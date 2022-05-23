package functions

import (
	"context"
	"fmt"
	"github.com/pretodev/colaborativa/functions/helpers"
	"github.com/pretodev/colaborativa/functions/models"
	"net/http"
)

func SaveProfile(w http.ResponseWriter, r *http.Request) {
	ctx := context.Background()
	var editingUser models.Profile
	if err, code := helpers.ParsePost(r, &editingUser); code >= 400 {
		http.Error(w, fmt.Sprintf("%s", err), code)
		return
	}
	if err := validate.Struct(editingUser); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusBadRequest)
		return
	}
	var userId string
	if err := helpers.UserId(r, &userId); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusUnauthorized)
		return
	}
	if err := userRepo.SaveProfile(ctx, userId, editingUser); err != nil {
		http.Error(w, fmt.Sprintf("%e", err), http.StatusInternalServerError)
		return
	}
	helpers.Response(w, "Success", http.StatusOK)
}
