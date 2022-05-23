package functions

import (
	"context"
	"fmt"
	"github.com/pretodev/colaborativa/functions/helpers"
	"github.com/pretodev/colaborativa/functions/models"
	"net/http"
)

func SaveDailyFeeling(w http.ResponseWriter, r *http.Request) {
	var feeling models.Feeling
	if err, code := helpers.ParsePost(r, &feeling); code >= 400 {
		http.Error(w, fmt.Sprintf("%s", err), code)
		return
	}
	if err := validate.Struct(feeling); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusBadRequest)
		return
	}
	var userId string
	if err := helpers.UserId(r, &userId); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusUnauthorized)
		return
	}
	ctx := context.Background()
	felling, err := feelingRepo.FromToday(ctx, userId)
	if err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
		return
	}
	if felling != nil {
		http.Error(w, "feeling already saved for today", http.StatusConflict)
		return
	}
	if err := feelingRepo.SaveToday(ctx, userId, feeling); err != nil {
		http.Error(w, fmt.Sprintf("%e", err), http.StatusInternalServerError)
		return
	}
	helpers.Response(w, "Success", http.StatusCreated)
}
