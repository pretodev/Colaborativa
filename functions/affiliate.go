package functions

import (
	"fmt"
	"github.com/pretodev/colaborativa/functions/helpers"
	"github.com/pretodev/colaborativa/functions/models"
	"log"
	"net/http"
)

func Affiliate(w http.ResponseWriter, r *http.Request) {
	var affiliate models.Affiliate
	if err, code := helpers.ParsePost(r, &affiliate); code >= 400 {
		log.Println("ParsePost:", err.Error())
		http.Error(w, fmt.Sprintf("%s", err), code)
		return
	}
	if err := validate.Struct(affiliate); err != nil {
		log.Println("Validate:", err.Error())
		http.Error(w, fmt.Sprintf("%s", err), http.StatusBadRequest)
		return
	}
	var user models.User
	if err := parseUser(r, &user); err != nil {
		http.Error(w, fmt.Sprintf("Parse User:%s", err), http.StatusUnauthorized)
		return
	}
	if err := mentoringRepo.SetMentor(ctx, user, affiliate.MentorId); err != nil {
		http.Error(w, fmt.Sprintf("%s", err), http.StatusInternalServerError)
		return
	}
	helpers.Response(w, "Success", http.StatusCreated)
}
