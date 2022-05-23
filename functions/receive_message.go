package functions

import (
	"context"
	"fmt"
	"github.com/pretodev/colaborativa/functions/helpers"
	"github.com/pretodev/colaborativa/functions/models"
	"net/http"
)

func ReceiveMessage(w http.ResponseWriter, r *http.Request) {
	var userMessage models.UserMessage
	if err, code := helpers.ParsePost(r, &userMessage); code >= 400 {
		http.Error(w, fmt.Sprintf("%s", err), code)
		return
	}
	if err := validate.Struct(userMessage); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusBadRequest)
		return
	}
	var userId string
	if err := helpers.UserId(r, &userId); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusUnauthorized)
		return
	}
	ctx := context.Background()
	profile, err := profileRepo.FromId(ctx, userId)
	if err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
		return
	}
	if profile == nil {
		http.Error(w, "profile not found", http.StatusUnauthorized)
		return
	}
	if err := saveMessage(ctx, userId, userMessage.Content); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
		return
	}
	helpers.Response(w, "Success", http.StatusCreated)
}
