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
    apiKey: 'AIzaSyAmue0TGhTtLdas-7xfGrj_ucOXf-8y8qQ',
    appId: '1:258812969392:web:7b0ef7b5730d3159c6d675',
    messagingSenderId: '258812969392',
    projectId: 'nwap1-66206',
    authDomain: 'nwap1-66206.firebaseapp.com',
    storageBucket: 'nwap1-66206.appspot.com',
    measurementId: 'G-5WV14ESHKE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQLvLtfTrGHahRYlsiR_AQXMNB3g-u1cY',
    appId: '1:258812969392:android:2be70aa886ca2792c6d675',
    messagingSenderId: '258812969392',
    projectId: 'nwap1-66206',
    storageBucket: 'nwap1-66206.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAXd8k6np7bdfLdQh1wFOgMHpY0YUxQ5I',
    appId: '1:258812969392:ios:1aff3ad819c9d16dc6d675',
    messagingSenderId: '258812969392',
    projectId: 'nwap1-66206',
    storageBucket: 'nwap1-66206.appspot.com',
    iosClientId: '258812969392-656tvf45p26heqs33kpvrfbiofhgvsik.apps.googleusercontent.com',
    iosBundleId: 'com.example.nwati',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAAXd8k6np7bdfLdQh1wFOgMHpY0YUxQ5I',
    appId: '1:258812969392:ios:1aff3ad819c9d16dc6d675',
    messagingSenderId: '258812969392',
    projectId: 'nwap1-66206',
    storageBucket: 'nwap1-66206.appspot.com',
    iosClientId: '258812969392-656tvf45p26heqs33kpvrfbiofhgvsik.apps.googleusercontent.com',
    iosBundleId: 'com.example.nwati',
  );
}
