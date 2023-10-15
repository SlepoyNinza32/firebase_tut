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
    apiKey: 'AIzaSyAKZkqlBrNGHQSZb-2Q6F-KYvQJDAc6U44',
    appId: '1:770760143185:web:4c98be6c57dfe05d0d2370',
    messagingSenderId: '770760143185',
    projectId: 'flutterproject-ada2c',
    authDomain: 'flutterproject-ada2c.firebaseapp.com',
    storageBucket: 'flutterproject-ada2c.appspot.com',
    measurementId: 'G-66RSJ5SCSL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD9nUt1zLfFgJ8D_L2lUlbfaaHaC9bdfEg',
    appId: '1:770760143185:android:031492430f33a93a0d2370',
    messagingSenderId: '770760143185',
    projectId: 'flutterproject-ada2c',
    storageBucket: 'flutterproject-ada2c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDiGJ5dMdwD4toJSDn72vF20YDPb5lzoho',
    appId: '1:770760143185:ios:6a2ce852cba60bd10d2370',
    messagingSenderId: '770760143185',
    projectId: 'flutterproject-ada2c',
    storageBucket: 'flutterproject-ada2c.appspot.com',
    iosBundleId: 'com.example.firebaseTut',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDiGJ5dMdwD4toJSDn72vF20YDPb5lzoho',
    appId: '1:770760143185:ios:48514c8d8a55dd790d2370',
    messagingSenderId: '770760143185',
    projectId: 'flutterproject-ada2c',
    storageBucket: 'flutterproject-ada2c.appspot.com',
    iosBundleId: 'com.example.firebaseTut.RunnerTests',
  );
}