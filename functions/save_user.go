package functions

import (
	"context"
	"fmt"
	"github.com/pretodev/colaborativa/functions/helpers"
	"github.com/pretodev/colaborativa/functions/models"
	"log"
	"net/http"
)

func SaveProfile(w http.ResponseWriter, r *http.Request) {
	ctx := context.Background()
	var editingUser models.User
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
	exists := userRepo.Exists(ctx, userId)
	if err := userRepo.Save(ctx, userId, editingUser); err != nil {
		http.Error(w, fmt.Sprintf("%e", err), http.StatusInternalServerError)
		return
	}

	if !exists {
		log.Println("New user created")
		user, err := userRepo.FromId(ctx, userId)
		log.Println(err)
		if err != nil {
			http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
			return
		}
		if err := saveMessage(ctx, models.AdminUser, fmt.Sprintf(models.NewUserMessage, user.Name)); err != nil {
			http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
			return
		}
	}
	helpers.Response(w, "Success", http.StatusOK)
}
