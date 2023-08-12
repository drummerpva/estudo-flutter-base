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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbOQSbCdXiPlZw-dyKJ5Ncyo3RS6mWXDQ',
    appId: '1:534132623411:android:07341d4ebb4244e7047b46',
    messagingSenderId: '534132623411',
    projectId: 'fir-example-adf-7ec41',
    storageBucket: 'fir-example-adf-7ec41.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVa8Ne2fCMNzGeXHCd-tQNtR0w5K81FEw',
    appId: '1:534132623411:ios:63336bcb526dc10e047b46',
    messagingSenderId: '534132623411',
    projectId: 'fir-example-adf-7ec41',
    storageBucket: 'fir-example-adf-7ec41.appspot.com',
    androidClientId: '534132623411-btge5sdhu47uj7jcv60qj2382m0s4jps.apps.googleusercontent.com',
    iosClientId: '534132623411-od5p3u34ftp6uerk8fcfo924t4lc0dje.apps.googleusercontent.com',
    iosBundleId: 'com.douglaspoma.firebaseExample',
  );
}
