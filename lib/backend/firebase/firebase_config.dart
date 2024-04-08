import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAHA-EgPFrxK4uNfpQftKLFcNKOHYNOO9E",
            authDomain: "cash4trash-9b593.firebaseapp.com",
            projectId: "cash4trash-9b593",
            storageBucket: "cash4trash-9b593.appspot.com",
            messagingSenderId: "178565084985",
            appId: "1:178565084985:web:bfc72040b2d9ab1ab99ae8",
            measurementId: "G-L0JNWEQR63"));
  } else {
    await Firebase.initializeApp();
  }
}
