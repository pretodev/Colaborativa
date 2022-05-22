package main

import (
	"github.com/gorilla/mux"
	"github.com/pretodev/colaborativa/functions"
	"net/http"
)

func main() {
	routes := mux.NewRouter()
	routes.HandleFunc("/save-user", functions.SaveUser)
	routes.HandleFunc("/save-feeling", functions.SaveDailyFeeling)
	http.Handle("/", routes)
	http.ListenAndServe(":8080", nil)
}
