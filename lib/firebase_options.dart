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
    apiKey: 'AIzaSyC1uP8-syVZRPf_a_zwoEtMyLN36cYkmWc',
    appId: '1:139678807207:web:5764ecec6cbef471e79782',
    messagingSenderId: '139678807207',
    projectId: 'login-register-firebase-e145e',
    authDomain: 'login-register-firebase-e145e.firebaseapp.com',
    storageBucket: 'login-register-firebase-e145e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCI1FWPIQxZitlm8W0pPLL1ZGpOJ4AQrPA',
    appId: '1:139678807207:android:a779435597c804f8e79782',
    messagingSenderId: '139678807207',
    projectId: 'login-register-firebase-e145e',
    storageBucket: 'login-register-firebase-e145e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQTot4IpiX-dYk2dDXwzZgLQiQuZ3kBVQ',
    appId: '1:139678807207:ios:8df86f0245473b3ee79782',
    messagingSenderId: '139678807207',
    projectId: 'login-register-firebase-e145e',
    storageBucket: 'login-register-firebase-e145e.appspot.com',
    androidClientId: '139678807207-u1gap55gthtjqqp4tvrjg0vf5gn1lc9d.apps.googleusercontent.com',
    iosClientId: '139678807207-ek3e0grlg6mnh9i7hhjea9hspb2ui0t1.apps.googleusercontent.com',
    iosBundleId: 'com.example.miniPro',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBQTot4IpiX-dYk2dDXwzZgLQiQuZ3kBVQ',
    appId: '1:139678807207:ios:b57fcc9ec7bc0d6ee79782',
    messagingSenderId: '139678807207',
    projectId: 'login-register-firebase-e145e',
    storageBucket: 'login-register-firebase-e145e.appspot.com',
    androidClientId: '139678807207-u1gap55gthtjqqp4tvrjg0vf5gn1lc9d.apps.googleusercontent.com',
    iosClientId: '139678807207-66ff76dpukd0lre0e9e2koftp5tgofua.apps.googleusercontent.com',
    iosBundleId: 'com.example.miniPro.RunnerTests',
  );
}
