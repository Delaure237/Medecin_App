
  import 'package:firebase_messaging/firebase_messaging.dart';
Future<void> handleBackgroundMessage (RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('body: ${message.notification?.body}');
  print('payload: ${message.data}');
}

class FireBaseApi{
    final _firebaseMessaging = FirebaseMessaging.instance;

    Future<void>initNotification() async {
      await _firebaseMessaging.requestPermission();
      final fCMToken = await _firebaseMessaging.getToken();
      print("token $fCMToken");
      FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);

    }
  }