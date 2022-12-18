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
    apiKey: 'AIzaSyARziI4f9Ivwnb3wrw-Elag2gN6xAeF9_Y',
    appId: '1:413706133976:web:00501bf0bb42f8512252ad',
    messagingSenderId: '413706133976',
    projectId: 'fir-flutter-codelab-bfa7f',
    authDomain: 'fir-flutter-codelab-bfa7f.firebaseapp.com',
    storageBucket: 'fir-flutter-codelab-bfa7f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB4f8JcfRKK0KqGNQBxs1KH1hg0yxmCF6w',
    appId: '1:413706133976:android:b1fe346b8caa72ba2252ad',
    messagingSenderId: '413706133976',
    projectId: 'fir-flutter-codelab-bfa7f',
    storageBucket: 'fir-flutter-codelab-bfa7f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAi2cyQET6cP_ZyIfZitMiW8-qFQZVJstE',
    appId: '1:413706133976:ios:e1bdb2f58106a0672252ad',
    messagingSenderId: '413706133976',
    projectId: 'fir-flutter-codelab-bfa7f',
    storageBucket: 'fir-flutter-codelab-bfa7f.appspot.com',
    iosClientId:
        '413706133976-0fa885frauafh71phnttmfkvrkf2irtd.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAi2cyQET6cP_ZyIfZitMiW8-qFQZVJstE',
    appId: '1:413706133976:ios:e1bdb2f58106a0672252ad',
    messagingSenderId: '413706133976',
    projectId: 'fir-flutter-codelab-bfa7f',
    storageBucket: 'fir-flutter-codelab-bfa7f.appspot.com',
    iosClientId:
        '413706133976-0fa885frauafh71phnttmfkvrkf2irtd.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );
}
