package functions

import (
	"context"
	firebase "firebase.google.com/go"
	"firebase.google.com/go/db"
	v10 "github.com/go-playground/validator/v10"
	"github.com/pretodev/colaborativa/functions/commands"
	"github.com/pretodev/colaborativa/functions/constants"
	"github.com/pretodev/colaborativa/functions/repositories"
	"google.golang.org/api/option"
	"log"
	"os"
)

var ctx = context.Background()

var database *db.Client

var profileRepo *repositories.UserRepo
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
	opt := option.WithCredentialsFile(constants.FirebaseCredentialsFile)
	app, err := firebase.NewApp(ctx, conf, opt)
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
	profileRepo = repositories.NewUserRepo(firestore)
	feelingRepo = repositories.NewFeelingRepo(database)
	activityRepo = repositories.NewActivityRepo(database)
	messageRepo = repositories.NewMessageRepo(database)
	saveMessage = commands.NewSaveMessageCommand(messageRepo, profileRepo)
}
