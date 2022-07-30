import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  late User user;
  homeScreen(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        user.email.toString(),
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
