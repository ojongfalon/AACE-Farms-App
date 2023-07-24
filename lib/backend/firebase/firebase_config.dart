import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAqp_IOH4IB1w7oHB1k7ae_JVghEZ5goKQ",
            authDomain: "aace-farms-cam.firebaseapp.com",
            projectId: "aace-farms-cam",
            storageBucket: "aace-farms-cam.appspot.com",
            messagingSenderId: "152172135006",
            appId: "1:152172135006:web:62c6db76fc4c3922f26acf",
            measurementId: "G-HH2400N8W9"));
  } else {
    await Firebase.initializeApp();
  }
}
