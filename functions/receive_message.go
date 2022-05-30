package functions

import (
	"context"
	"fmt"
	"github.com/pretodev/colaborativa/functions/helpers"
	"github.com/pretodev/colaborativa/functions/models"
	"log"
	"net/http"
)

func ReceiveMessage(w http.ResponseWriter, r *http.Request) {
	var userMessage models.UserMessage
	if err, code := helpers.ParsePost(r, &userMessage); code >= 400 {
		log.Println("ParsePost:", err.Error())
		http.Error(w, fmt.Sprintf("%s", err), code)
		return
	}
	if err := validate.Struct(userMessage); err != nil {
		log.Println("Validate:", err.Error())
		http.Error(w, fmt.Sprintf("%s", err), http.StatusBadRequest)
		return
	}
	var userId string
	if err := helpers.UserId(r, &userId); err != nil {
		log.Println("UserId:", err.Error())
		http.Error(w, fmt.Sprintf("%s", err), http.StatusUnauthorized)
		return
	}
	ctx := context.Background()
	user, err := userRepo.FromId(ctx, userId)
	if err != nil {
		log.Println("UserRepo:", err.Error())
		http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
		return
	}
	if user == nil {
		log.Println("User not found")
		http.Error(w, "user not found", http.StatusUnauthorized)
		return
	}
	if err := saveMessage(ctx, *user, userMessage.Content); err != nil {
		log.Println("SaveMessage:", err.Error())
		http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
		return
	}
	toUser, _ := userRepo.FromId(ctx, userMessage.To)
	if toUser != nil && len(toUser.Tokens) > 0 {
		err = notificationServ.SendTo(ctx, userMessage.Content, toUser.Tokens)
		if err != nil {
			log.Println("NotificationServ:", err.Error())
			http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
			return
		}
	}
	if err := scoreRepo.ScoreAction(ctx, *user, models.ActionSendMessage); err != nil {
		log.Println("ScoreAction:", err.Error())
		http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
		return
	}
	helpers.Response(w, "Success", http.StatusCreated)
}
