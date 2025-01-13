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
    apiKey: 'AIzaSyCfX48mXHLbhj5_jwrKalXsHbWFvWEvbLI',
    appId: '1:1002257336789:web:1f6d6129290870598c155c',
    messagingSenderId: '1002257336789',
    projectId: 'gymnote-63557',
    authDomain: 'gymnote-63557.firebaseapp.com',
    databaseURL: 'https://gymnote-63557-default-rtdb.firebaseio.com',
    storageBucket: 'gymnote-63557.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAkpzK925mSi9KVzBdCIsLTiUuTpIBJsvc',
    appId: '1:1002257336789:android:cbf74802d5919a7c8c155c',
    messagingSenderId: '1002257336789',
    projectId: 'gymnote-63557',
    databaseURL: 'https://gymnote-63557-default-rtdb.firebaseio.com',
    storageBucket: 'gymnote-63557.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDvWHwkC32GbLkC7MU2SkBWH08RfsmbKNI',
    appId: '1:1002257336789:ios:746b7bd7c20a6dcf8c155c',
    messagingSenderId: '1002257336789',
    projectId: 'gymnote-63557',
    databaseURL: 'https://gymnote-63557-default-rtdb.firebaseio.com',
    storageBucket: 'gymnote-63557.firebasestorage.app',
    iosBundleId: 'com.example.gymnote',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDvWHwkC32GbLkC7MU2SkBWH08RfsmbKNI',
    appId: '1:1002257336789:ios:746b7bd7c20a6dcf8c155c',
    messagingSenderId: '1002257336789',
    projectId: 'gymnote-63557',
    databaseURL: 'https://gymnote-63557-default-rtdb.firebaseio.com',
    storageBucket: 'gymnote-63557.firebasestorage.app',
    iosBundleId: 'com.example.gymnote',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCfX48mXHLbhj5_jwrKalXsHbWFvWEvbLI',
    appId: '1:1002257336789:web:a36a1c5792ca03cb8c155c',
    messagingSenderId: '1002257336789',
    projectId: 'gymnote-63557',
    authDomain: 'gymnote-63557.firebaseapp.com',
    databaseURL: 'https://gymnote-63557-default-rtdb.firebaseio.com',
    storageBucket: 'gymnote-63557.firebasestorage.app',
  );
}
