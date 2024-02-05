// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBC1s3CyLmziKuVlWwCpbnnnRK0WhukNjA',
    appId: '1:472967929156:web:dd28e4b2127c35deb90b11',
    messagingSenderId: '472967929156',
    projectId: 'specialist-b4ba2',
    authDomain: 'specialist-b4ba2.firebaseapp.com',
    storageBucket: 'specialist-b4ba2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9Fn1UxR17Wdr4wB3mJpcYIDl0UoLA3so',
    appId: '1:472967929156:android:8b0f0460485f1898b90b11',
    messagingSenderId: '472967929156',
    projectId: 'specialist-b4ba2',
    storageBucket: 'specialist-b4ba2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD2VnfepdSFwlqcpdmLUrn_A2u9pDssJDI',
    appId: '1:472967929156:ios:2750a9c10407d065b90b11',
    messagingSenderId: '472967929156',
    projectId: 'specialist-b4ba2',
    storageBucket: 'specialist-b4ba2.appspot.com',
    iosBundleId: 'com.example.untitled15',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD2VnfepdSFwlqcpdmLUrn_A2u9pDssJDI',
    appId: '1:472967929156:ios:4598ea6a38567a89b90b11',
    messagingSenderId: '472967929156',
    projectId: 'specialist-b4ba2',
    storageBucket: 'specialist-b4ba2.appspot.com',
    iosBundleId: 'com.example.untitled15.RunnerTests',
  );
}
