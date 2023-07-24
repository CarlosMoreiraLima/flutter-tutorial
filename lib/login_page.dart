import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usermail = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SizedBox(
          // width: double.infinity,
          width: MediaQuery.of(context).size.width,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(100)),
                child: Image.network(
                  "https://tinder.com/static/tinder.png",
                ),
              ),
              Container(
                height: 25,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Email"),
                ),
                onChanged: (text) {
                  usermail = text;
                },
              ),
              Container(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                ),
                onChanged: (text) {
                  password = text;
                },
              ),
              Container(height: 20),
              ElevatedButton(
                child: Text("Entrar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  print("Email: $usermail \nPassword: $password");
                  Navigator.of(context).pushReplacementNamed('/home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
