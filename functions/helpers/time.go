package helpers

import "time"

func IsToday(t time.Time) bool {
	today := time.Now()
	return t.Day() == today.Day() && t.Month() == today.Month() && t.Year() == today.Year()
}

func EqualsDate(t1 time.Time, t2 time.Time) bool {
	return t1.Day() == t2.Day() && t1.Month() == t2.Month() && t1.Year() == t2.Year()
}
