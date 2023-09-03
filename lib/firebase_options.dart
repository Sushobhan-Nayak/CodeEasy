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
    apiKey: 'AIzaSyA9yeD5tkiN_v6iQuUV5QWPiZ13bqvoIL8',
    appId: '1:116861229637:web:457f646ba861bfb991612c',
    messagingSenderId: '116861229637',
    projectId: 'helloworld-22c6a',
    authDomain: 'helloworld-22c6a.firebaseapp.com',
    databaseURL: 'https://helloworld-22c6a-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'helloworld-22c6a.appspot.com',
    measurementId: 'G-13JHC9SJRC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAH7Vca9oIbFo9__lbbUELDJIAHQi_FWSM',
    appId: '1:116861229637:android:0d9bc3d38211deb891612c',
    messagingSenderId: '116861229637',
    projectId: 'helloworld-22c6a',
    databaseURL: 'https://helloworld-22c6a-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'helloworld-22c6a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSHJBZuQQZfvHLpaEV080cfyzQtztNqFk',
    appId: '1:116861229637:ios:6ebd69beb227fd1f91612c',
    messagingSenderId: '116861229637',
    projectId: 'helloworld-22c6a',
    databaseURL: 'https://helloworld-22c6a-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'helloworld-22c6a.appspot.com',
    androidClientId: '116861229637-d29ask6uaj4k3f60bg5ispfq3u0ie1ep.apps.googleusercontent.com',
    iosClientId: '116861229637-3o0t2q3dalkq4gj4sh17nqekd4d68qbc.apps.googleusercontent.com',
    iosBundleId: 'com.example.helloWorld',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBSHJBZuQQZfvHLpaEV080cfyzQtztNqFk',
    appId: '1:116861229637:ios:6ebd69beb227fd1f91612c',
    messagingSenderId: '116861229637',
    projectId: 'helloworld-22c6a',
    databaseURL: 'https://helloworld-22c6a-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'helloworld-22c6a.appspot.com',
    androidClientId: '116861229637-d29ask6uaj4k3f60bg5ispfq3u0ie1ep.apps.googleusercontent.com',
    iosClientId: '116861229637-3o0t2q3dalkq4gj4sh17nqekd4d68qbc.apps.googleusercontent.com',
    iosBundleId: 'com.example.helloWorld',
  );
}