import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

const baseUrl = "https://6ded-168-232-228-63.sa.ngrok.io/";

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
