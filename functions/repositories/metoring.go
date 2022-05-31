package repositories

import (
	"cloud.google.com/go/firestore"
	"context"
	"github.com/pretodev/colaborativa/functions/models"
)

type MentoringRepo struct {
	firestore *firestore.Client
}

func NewMentoringRepo(firestore *firestore.Client) *MentoringRepo {
	return &MentoringRepo{
		firestore: firestore,
	}
}

func (repo MentoringRepo) SetMentor(ctx context.Context, user models.User, mentorId string) error {
	_, err := repo.firestore.Doc("users/"+user.Id).Set(ctx, map[string]string{
		"mentor": mentorId,
	}, firestore.MergeAll)
	if err != nil {
		return err
	}
	_, err = repo.firestore.Doc("users/"+mentorId).Set(ctx, map[string]string{
		"mentored": user.Id,
	}, firestore.MergeAll)
	return err
}

func (repo MentoringRepo) PrepareUser(ctx context.Context, user models.User) error {
	_, err := repo.firestore.Doc("users/"+user.Id).Set(ctx, map[string]*string{
		"mentor":   nil,
		"mentored": nil,
	}, firestore.MergeAll)
	return err
}
