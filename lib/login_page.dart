import 'package:flutter/material.dart';

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
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  "assets/images/tinder.png",
                  height: 150.0,
                  width: 150.0,
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
