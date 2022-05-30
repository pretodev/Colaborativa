package functions

import (
	"context"
	"fmt"
	"github.com/pretodev/colaborativa/functions/helpers"
	"github.com/pretodev/colaborativa/functions/models"
	"net/http"
	"time"
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
	var user models.User
	if err := parseUser(r, &user); err != nil {
		http.Error(w, fmt.Sprintf("Parse User:%s", err), http.StatusUnauthorized)
		return
	}
	if err := activityRepo.Check(ctx, user.Id, activity); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
		return
	}
	if err := scoreRepo.ScoreAction(ctx, user, models.ActionCheckActivity); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
		return
	}
	isDateChecked, err := activityRepo.IsDateChecked(ctx, user, time.Now())
	if err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
		return
	}
	if isDateChecked {
		levelUp, err := achievementRepo.CheckGoal(ctx, user, models.UpCompleteActivityDaily)
		if err != nil {
			http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
			return
		}
		if levelUp {
			if err := scoreRepo.ScoreAction(ctx, user, models.ActionLevelUp); err != nil {
				http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
				return
			}
		}
	}
	helpers.Response(w, "Success", http.StatusCreated)
}
