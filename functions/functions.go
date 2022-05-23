package functions

import (
	"context"
	"log"
	"os"

	firebase "firebase.google.com/go"
	"firebase.google.com/go/db"
	_ "github.com/GoogleCloudPlatform/functions-framework-go/funcframework"
	v10 "github.com/go-playground/validator/v10"
	"github.com/pretodev/colaborativa/functions/commands"
	"github.com/pretodev/colaborativa/functions/repositories"
)

var ctx = context.Background()

var database *db.Client

var userRepo *repositories.UserRepo
var feelingRepo *repositories.FeelingRepo
var activityRepo *repositories.ActivityRepo
var messageRepo *repositories.MessageRepo

var saveMessage commands.SaveMessageCommand

var validate = v10.New()

func init() {
	if value := os.Getenv("DATABASE_EMULATOR_HOST"); value != "" {
		log.Printf("Using Database Emulator: %s", value)
	}
	conf := &firebase.Config{
		DatabaseURL: "https://colaborativa-dda97-default-rtdb.firebaseio.com",
	}
	//opt := option.WithCredentialsFile(constants.FirebaseCredentialsFile)
	app, err := firebase.NewApp(ctx, conf)
	if err != nil {
		log.Fatalf("firebase.NewApp: %v", err)
	}
	database, err = app.Database(ctx)
	if err != nil {
		log.Fatalf("app.Database: %v", err)
	}
	firestore, err := app.Firestore(ctx)
	if err != nil {
		log.Fatalf("app.Firestore: %v", err)
	}
	userRepo = repositories.NewUserRepo(firestore, database)
	feelingRepo = repositories.NewFeelingRepo(database)
	activityRepo = repositories.NewActivityRepo(database)
	messageRepo = repositories.NewMessageRepo(database)
	saveMessage = commands.NewSaveMessageCommand(messageRepo, userRepo)
}
