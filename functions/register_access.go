package functions

import (
	"context"
	"fmt"
	"github.com/pretodev/colaborativa/functions/helpers"
	"github.com/pretodev/colaborativa/functions/models"
	"net/http"
)

func RegisterAccess(w http.ResponseWriter, r *http.Request) {
	var access models.UserAccess
	if err, code := helpers.ParsePost(r, &access); code >= 400 {
		http.Error(w, fmt.Sprintf("%s", err), code)
		return
	}
	if err := validate.Struct(access); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusBadRequest)
		return
	}
	var userId string
	if err := helpers.UserId(r, &userId); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusUnauthorized)
		return
	}
	ctx := context.Background()
	if err := userRepo.AddDeviceToken(ctx, userId, access.DeviceToken); err != nil {
		http.Error(w, fmt.Sprintf("%e", err), http.StatusInternalServerError)
		return
	}
	if err := userRepo.AddAccess(ctx, userId); err != nil {
		http.Error(w, fmt.Sprintf("%e", err), http.StatusInternalServerError)
		return
	}

	helpers.Response(w, "Success", http.StatusCreated)
}
