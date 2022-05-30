package main

import (
	"github.com/gorilla/mux"
	"github.com/pretodev/colaborativa/functions"
	"log"
	"net/http"
)

func loggingMiddleware(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		log.Println(r.Method, r.URL.Path)
		next.ServeHTTP(w, r)
	})
}

func main() {
	routes := mux.NewRouter()
	routes.Use(loggingMiddleware)
	routes.HandleFunc("/save-user", functions.SaveProfile)
	routes.HandleFunc("/save-feeling", functions.SaveDailyFeeling)
	routes.HandleFunc("/check-activity", functions.CheckActivity)
	routes.HandleFunc("/send-message", functions.ReceiveMessage)
	routes.HandleFunc("/register-access", functions.RegisterAccess)
	log.Fatal(http.ListenAndServe(":8080", routes))
}
