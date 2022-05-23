package functions

import (
	"context"
	"fmt"
	"github.com/pretodev/colaborativa/functions/helpers"
	"github.com/pretodev/colaborativa/functions/models"
	"net/http"
)

func CheckActivity(w http.ResponseWriter, r *http.Request) {
	ctx := context.Background()
	var activity models.UserActivity
	if err, code := helpers.ParsePost(r, &activity); code >= 400 {
		http.Error(w, fmt.Sprintf("%s", err), code)
		return
	}
	if err := validate.Struct(activity); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusBadRequest)
		return
	}
	var userId string
	if err := helpers.UserId(r, &userId); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusUnauthorized)
		return
	}
	if err := activityRepo.Check(ctx, userId, activity); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
		return
	}
	helpers.Response(w, "Success", http.StatusCreated)
}
