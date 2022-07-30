import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../views/home_screen.dart';

class AuthHelper {
  Future signUp(email, password, context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      var authCradential = userCredential.user;
      if (authCradential!.uid.isNotEmpty) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => homeScreen()));
      } else {
        print("sign up failed");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
