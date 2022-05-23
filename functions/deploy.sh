gcloud functions deploy save-user --entry-point SaveProfile --runtime go116 --trigger-http --allow-unauthenticated --region southamerica-east1

gcloud functions deploy save-feeling --entry-point SaveDailyFeeling --runtime go116 --trigger-http --allow-unauthenticated --region southamerica-east1

gcloud functions deploy check-activity --entry-point CheckActivity --runtime go116 --trigger-http --allow-unauthenticated --region southamerica-east1

gcloud functions deploy send-message --entry-point ReceiveMessage --runtime go116 --trigger-http --allow-unauthenticated --region southamerica-east1

gcloud functions deploy register-access --entry-point RegisterAccess --runtime go116 --trigger-http --allow-unauthenticated --region southamerica-east1