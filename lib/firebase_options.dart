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
    apiKey: 'AIzaSyD5y_eCST92J9h_m7WHKR2ERZEu5umOjm0',
    appId: '1:238866518230:web:87a0d40aac2003043bf977',
    messagingSenderId: '238866518230',
    projectId: 'comedb-c5d30',
    authDomain: 'comedb-c5d30.firebaseapp.com',
    storageBucket: 'comedb-c5d30.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNekl4KymZQZ66o6orXPU0u5dnVhMFkEY',
    appId: '1:238866518230:android:356368af8c698ec33bf977',
    messagingSenderId: '238866518230',
    projectId: 'comedb-c5d30',
    storageBucket: 'comedb-c5d30.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDIDil6W4mmgcbbFPtAIWtNRil1pN-Vfwg',
    appId: '1:238866518230:ios:eab3ea986b64972d3bf977',
    messagingSenderId: '238866518230',
    projectId: 'comedb-c5d30',
    storageBucket: 'comedb-c5d30.appspot.com',
    iosBundleId: 'com.example.printmate',
  );
}
