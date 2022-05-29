package functions

import (
	"context"
	"fmt"
	"github.com/pretodev/colaborativa/functions/helpers"
	"github.com/pretodev/colaborativa/functions/models"
	"net/http"
	"time"
)

func RegisterAccess(w http.ResponseWriter, r *http.Request) {
	if err, code := helpers.ParsePost(r, nil); code >= 400 {
		http.Error(w, fmt.Sprintf("%s", err), code)
		return
	}
	var user models.User
	if err := parseUser(r, &user); err != nil {
		http.Error(w, fmt.Sprintf("Parse User:%s", err), http.StatusUnauthorized)
		return
	}
	ctx := context.Background()
	accessTime := time.Now()
	lastAccess, err := userRepo.LastAccess(ctx, user.Id)
	if err != nil {
		http.Error(w, fmt.Sprintf("Last Access: %e", err), http.StatusInternalServerError)
		return
	}
	if lastAccess == nil || !helpers.EqualsDate(*lastAccess, accessTime) {
		levelUp, err := achievementRepo.CheckGoal(ctx, user, models.ActionRegisterDiaryAccess)
		if err != nil {
			http.Error(w, fmt.Sprintf("Check Goal: %e", err), http.StatusInternalServerError)
			return
		}
		if err := scoreRepo.ScoreAction(ctx, user, models.ActionRegisterDiaryAccess); err != nil {
			http.Error(w, fmt.Sprintf("Score Action: %e", err), http.StatusInternalServerError)
			return
		}
		if levelUp {
			if err := scoreRepo.ScoreAction(ctx, user, models.ActionLevelUp); err != nil {
				http.Error(w, fmt.Sprintf("Level Up: %e", err), http.StatusInternalServerError)
				return
			}
		}
	}
	if err := userRepo.AddAccess(ctx, user.Id, accessTime); err != nil {
		http.Error(w, fmt.Sprintf("Add Access: %e", err), http.StatusInternalServerError)
		return
	}
	helpers.Response(w, "Success", http.StatusCreated)
}
