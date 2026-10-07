import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  // ✅ Firebase API key sudah diisi dengan key asli dari google-services.json
  // Package: com.omnix.genz | Project: omnix-server

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJy6_nWl7GkDk_FLCJDuYy408nNoWdPEY',
    appId: '1:156720077102:android:390ec84ba77677b9b282bf',
    messagingSenderId: '156720077102',
    projectId: 'omnix-server',
    storageBucket: 'omnix-server.firebasestorage.app',
    databaseURL:
        'https://omnix-server-default-rtdb.asia-southeast1.firebasedatabase.app',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDJy6_nWl7GkDk_FLCJDuYy408nNoWdPEY',
    appId: '1:156720077102:android:390ec84ba77677b9b282bf',
    messagingSenderId: '156720077102',
    projectId: 'omnix-server',
    storageBucket: 'omnix-server.firebasestorage.app',
    databaseURL:
        'https://omnix-server-default-rtdb.asia-southeast1.firebasedatabase.app',
  );
}
