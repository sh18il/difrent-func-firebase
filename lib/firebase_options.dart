// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAbK9Gdl7U-azRcRjFp8P552AxHV8mVCZs',
    appId: '1:484525099101:web:5630446bf3a03d0751a5b4',
    messagingSenderId: '484525099101',
    projectId: 'student-mproject-393ee',
    authDomain: 'student-mproject-393ee.firebaseapp.com',
    storageBucket: 'student-mproject-393ee.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBd4f9B0YbFHrjjxCPeuoaQG_t5rPwD3ro',
    appId: '1:484525099101:android:d5acec69df04c0a751a5b4',
    messagingSenderId: '484525099101',
    projectId: 'student-mproject-393ee',
    storageBucket: 'student-mproject-393ee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAoKwd8LLBRRwPe5ZawTgIFbBRI8BVgt7k',
    appId: '1:484525099101:ios:4ec608d2d19ccae851a5b4',
    messagingSenderId: '484525099101',
    projectId: 'student-mproject-393ee',
    storageBucket: 'student-mproject-393ee.appspot.com',
    iosBundleId: 'com.example.studentMproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAoKwd8LLBRRwPe5ZawTgIFbBRI8BVgt7k',
    appId: '1:484525099101:ios:4ec608d2d19ccae851a5b4',
    messagingSenderId: '484525099101',
    projectId: 'student-mproject-393ee',
    storageBucket: 'student-mproject-393ee.appspot.com',
    iosBundleId: 'com.example.studentMproject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAbK9Gdl7U-azRcRjFp8P552AxHV8mVCZs',
    appId: '1:484525099101:web:2d3095e30513256e51a5b4',
    messagingSenderId: '484525099101',
    projectId: 'student-mproject-393ee',
    authDomain: 'student-mproject-393ee.firebaseapp.com',
    storageBucket: 'student-mproject-393ee.appspot.com',
  );
}
