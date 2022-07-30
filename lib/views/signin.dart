import 'package:firebase/views/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signin_screen extends StatelessWidget {
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
              ElevatedButton(onPressed: () {}, child: Text('sign in')),
              TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => signup_screen())),
                  child: Text('Dont have an accoount? signup')),
            ],
          ),
        ),
      ),
    );
  }
}
