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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBdmRp3taNmXykUOwODYU8Xq-7bIVP66Ck',
    appId: '1:84582479465:web:328b8e595168cc681994f8',
    messagingSenderId: '84582479465',
    projectId: 'sarthi-tejas',
    authDomain: 'sarthi-tejas.firebaseapp.com',
    storageBucket: 'sarthi-tejas.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpPTchvFDvAEezJmM-gFLPgw6mN5UYLgk',
    appId: '1:84582479465:ios:3f2f3f427f25d0151994f8',
    messagingSenderId: '84582479465',
    projectId: 'sarthi-tejas',
    storageBucket: 'sarthi-tejas.appspot.com',
    iosBundleId: 'com.example.sarthi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpPTchvFDvAEezJmM-gFLPgw6mN5UYLgk',
    appId: '1:84582479465:ios:76b6201d7d461a391994f8',
    messagingSenderId: '84582479465',
    projectId: 'sarthi-tejas',
    storageBucket: 'sarthi-tejas.appspot.com',
    iosBundleId: 'com.example.sarthi.RunnerTests',
  );
}