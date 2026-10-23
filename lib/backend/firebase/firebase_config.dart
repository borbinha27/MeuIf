import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBkPe9ZbV0aoWskRR2knRGP5zL2z7UZdVA",
            authDomain: "meu-i-f-a-p-k-ow9qhr.firebaseapp.com",
            projectId: "meu-i-f-a-p-k-ow9qhr",
            storageBucket: "meu-i-f-a-p-k-ow9qhr.firebasestorage.app",
            messagingSenderId: "570389016634",
            appId: "1:570389016634:web:6c664bde54eb27c87ac503"));
  } else {
    await Firebase.initializeApp();
  }
}
