package functions

import (
	"context"
	firebase "firebase.google.com/go"
	"firebase.google.com/go/db"
	v10 "github.com/go-playground/validator/v10"
	"github.com/pretodev/colaborativa/functions/constants"
	"github.com/pretodev/colaborativa/functions/repositories"
	"google.golang.org/api/option"
	"log"
	"os"
)

var ctx = context.Background()

var database *db.Client

var userRepo *repositories.ProfileRepo
var feelingRepo *repositories.FeelingRepo
var activityRepo *repositories.ActivityRepo

var validate = v10.New()

func init() {
	if value := os.Getenv("DATABASE_EMULATOR_HOST"); value != "" {
		log.Printf("Using Database Emulator: %s", value)
	}
	conf := &firebase.Config{
		DatabaseURL: "https://colaborativa-dda97-default-rtdb.firebaseio.com",
	}
	opt := option.WithCredentialsFile(constants.FirebaseCredentialsFile)
	app, err := firebase.NewApp(ctx, conf, opt)
	if err != nil {
		log.Fatalf("firebase.NewApp: %v", err)
	}
	database, err = app.Database(ctx)
	if err != nil {
		log.Fatalf("app.Database: %v", err)
	}
	userRepo = repositories.NewProfileRepo(database)
	feelingRepo = repositories.NewFeelingRepo(database)
	activityRepo = repositories.NewActivityRepo(database)
}
