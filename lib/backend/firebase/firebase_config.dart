import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCSUV3N6QBy145M4CPX8wM6XooPl7Dkes8",
            authDomain: "eggcellent-1afdd.firebaseapp.com",
            projectId: "eggcellent-1afdd",
            storageBucket: "eggcellent-1afdd.appspot.com",
            messagingSenderId: "84336652634",
            appId: "1:84336652634:web:4f3928facec164e9cb4363",
            measurementId: "G-GV5XGRY5KG"));
  } else {
    await Firebase.initializeApp();
  }
}
