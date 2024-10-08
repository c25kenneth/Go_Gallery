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
    apiKey: 'AIzaSyBvhWh9pM4DLwwWUK7ncHA2gCE76owwZ_s',
    appId: '1:319934429468:web:cbe823fde94a8ca44fe2d9',
    messagingSenderId: '319934429468',
    projectId: 'go-gallery-87a9e',
    authDomain: 'go-gallery-87a9e.firebaseapp.com',
    storageBucket: 'go-gallery-87a9e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDclBL30b81H5Td3-fLXrR_J0zznT7ZfGE',
    appId: '1:319934429468:android:3605466975d286b04fe2d9',
    messagingSenderId: '319934429468',
    projectId: 'go-gallery-87a9e',
    storageBucket: 'go-gallery-87a9e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBI2A5M3DwXMMXIMm3R1wJBwclIvNAwxZo',
    appId: '1:319934429468:ios:e8ca109d69d42d6f4fe2d9',
    messagingSenderId: '319934429468',
    projectId: 'go-gallery-87a9e',
    storageBucket: 'go-gallery-87a9e.appspot.com',
    iosClientId: '319934429468-hdcqqtiv866t75artvqc1v9hhmm81tfu.apps.googleusercontent.com',
    iosBundleId: 'com.c25kenneth.goGallery',
  );

}