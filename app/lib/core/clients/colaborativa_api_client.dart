import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

const baseUrl =
    "https://southamerica-east1-colaborativa-dda97.cloudfunctions.net";

class ColaborativaApiClient {
  ColaborativaApiClient(FirebaseAuth auth)
      : _client = Dio(
          BaseOptions(
            baseUrl: baseUrl,
          ),
        )..interceptors.add(
            InterceptorsWrapper(
              onRequest: (options, handler) {
                if (auth.currentUser != null) {
                  options.headers["X-User-Id"] = auth.currentUser!.uid;
                }
                handler.next(options);
              },
              onResponse: (response, handler) {
                handler.next(response);
              },
              onError: (error, handler) {
                handler.next(error);
              },
            ),
          );

  final Dio _client;

  Dio get client => _client;
}
