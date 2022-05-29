package main

import (
	"github.com/gorilla/mux"
	"github.com/pretodev/colaborativa/functions"
	"io"
	"log"
	"net/http"
)

func loggingMiddleware(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		b, err := io.ReadAll(r.Body)
		if err != nil {
			log.Fatalln(err)
		}
		log.Println(r.Method, r.URL.Path, string(b))
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
