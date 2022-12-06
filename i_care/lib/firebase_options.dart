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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBSWZusLnHxoSYxyuSzjiUWMlFrzsyUd5k',
    appId: '1:418332895051:web:43d92db8534dfb3c3b2ace',
    messagingSenderId: '418332895051',
    projectId: 'fortitude-46253',
    authDomain: 'fortitude-46253.firebaseapp.com',
    storageBucket: 'fortitude-46253.appspot.com',
    measurementId: 'G-CFNC1PJZ71',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJV-r-CJgiHst7MRSNbWGeJGlOBqqyHCc',
    appId: '1:418332895051:android:5af5287714dbf4c53b2ace',
    messagingSenderId: '418332895051',
    projectId: 'fortitude-46253',
    storageBucket: 'fortitude-46253.appspot.com',
  );
}
