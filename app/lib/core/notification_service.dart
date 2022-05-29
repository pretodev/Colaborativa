import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:colaborativa_app/core/entities/notification.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationService {
  NotificationService(
    this._userId, {
    required FirebaseFirestore firestore,
    required FirebaseMessaging messaging,
  })  : _firestore = firestore,
        _messaging = messaging;

  final String _userId;
  final FirebaseMessaging _messaging;
  final FirebaseFirestore _firestore;

  StreamSubscription? _messagingSubscription;

  Future<String> _saveToken(String token) async {
    await _firestore.doc('users/$_userId').set({
      'tokens': FieldValue.arrayUnion([token]),
    }, SetOptions(merge: true));
    return token;
  }

  void subscribe() async {
    _messagingSubscription?.cancel();
    final token = await _messaging.getToken();
    if (token != null) {
      await _saveToken(token);
    }
    _messagingSubscription = _messaging.onTokenRefresh.listen(_saveToken);

    final message = await FirebaseMessaging.instance.getInitialMessage();
    if (message != null) {
      final notification = _fromRemoteMessage(message);
      handleBackgroundMessage(notification);
    }

    FirebaseMessaging.onMessageOpenedApp
        .map(_fromRemoteMessage)
        .listen(handleBackgroundMessage);

    FirebaseMessaging.onMessage
        .map(_fromRemoteMessage)
        .listen(handleForegroundMessage);
  }

  void handleForegroundMessage(Notification notification) {
    // TODO: Handle foreground message, mostra notificação dentro do app
  }

  void handleBackgroundMessage(Notification message) {
    // TODO: Handle background message, mostra notificação na barra de notificações
  }
}

Notification _fromRemoteMessage(RemoteMessage message) {
  return Notification(
    title: message.notification?.title,
    body: message.notification?.body,
    data: message.data,
  );
}
