package main

import (
	"github.com/gorilla/mux"
	"github.com/pretodev/colaborativa/functions"
	"net/http"
)

func main() {
	routes := mux.NewRouter()
	routes.HandleFunc("/save-user", functions.SaveProfile)
	routes.HandleFunc("/save-feeling", functions.SaveDailyFeeling)
	routes.HandleFunc("/check-activity", functions.CheckActivity)
	routes.HandleFunc("/send-message", functions.ReceiveMessage)
	http.Handle("/", routes)
	http.ListenAndServe(":8080", nil)
}
