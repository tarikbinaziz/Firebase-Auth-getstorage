import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../views/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthHelper {
  // Future signUp(email, password, context) async {
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(email: email, password: password);
  //
  //     var authCradential = userCredential.user;
  //     if (authCradential!.uid.isNotEmpty) {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (_) => homeScreen()));
  //     } else {
  //       print("sign up failed");
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       print('The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  Future signInWithGoogle(context) async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    User? _user = userCredential.user;
    if (_user!.uid.isNotEmpty) {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => homeScreen(_user)));
    } else {
      print("sign is failed");
    }

    // Once signed in, return the UserCredential
  }
}
