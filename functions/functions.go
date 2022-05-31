package functions

import (
	"context"
	"errors"
	"github.com/pretodev/colaborativa/functions/models"
	"github.com/pretodev/colaborativa/functions/services"
	"log"
	"net/http"
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
var scoreRepo *repositories.ScoreRepo
var achievementRepo *repositories.AchievementRepo
var mentoringRepo *repositories.MentoringRepo

var notificationServ *services.NotificationService

var saveMessage commands.SaveMessageCommand

var validate = v10.New()

func parseUser(r *http.Request, u *models.User) error {
	userId := r.Header.Get("X-User-Id")
	if userId == "" {
		return errors.New("X-User-ActivityId não encontrado")
	}
	user, err := userRepo.FromId(ctx, userId)
	if err != nil {
		return errors.New("erro na busca usuários")
	}
	*u = *user
	return nil
}

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
	msg, err := app.Messaging(ctx)
	if err != nil {
		log.Fatalf("app.Messaging: %s\n", err)
	}
	userRepo = repositories.NewUserRepo(firestore, database)
	feelingRepo = repositories.NewFeelingRepo(database)
	activityRepo = repositories.NewActivityRepo(database)
	messageRepo = repositories.NewMessageRepo(database)
	scoreRepo = repositories.NewScoreRepo(firestore, database)
	achievementRepo = repositories.NewAchievementRepo(firestore, database)
	mentoringRepo = repositories.NewMentoringRepo(firestore)

	notificationServ = services.NewNotificationService(msg)

	saveMessage = commands.NewSaveMessageCommand(messageRepo)
}
