import 'package:firebase/helper/auth_helper.dart';
import 'package:firebase/views/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup_screen extends StatelessWidget {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextField(
                controller: _email,
                decoration: InputDecoration(hintText: " Enter Your Email"),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _password,
                decoration: InputDecoration(hintText: " Enter Your Password"),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    final userEmail = _email.text;
                    final userPassword = _password.text;
                    var obj = AuthHelper();
                    obj.signUp(userEmail, userPassword, context);
                  },
                  child: Text('sign up')),
              TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => signin_screen())),
                  child: Text('Already have an account? Login')),
            ],
          ),
        ),
      ),
    );
  }
}
