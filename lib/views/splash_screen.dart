import 'dart:async';

import 'package:firebase/views/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splash_screeen extends StatelessWidget {
  const splash_screeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => signup_screen())));
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          // backgroundImage: AssetImage("assets/lion logo.png"),
          backgroundColor: Colors.transparent,
          radius: 30,
          child: Image.asset(
            "assets/lion logo.png",
            fit: BoxFit.cover,
          ),
          //  backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
