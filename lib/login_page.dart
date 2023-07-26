import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usermail = "";
  String password = "";

  Widget _body() {
    return Center(
      child: Container(
        width: (MediaQuery.of(context).size.width / 10) * 9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset(
                "assets/images/shiftpower.webp",
                height: 150.0,
                width: 150.0,
              ),
            ),
            Container(
              height: 50,
            ),
            Card(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(55),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        label: Text(
                          "Email",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      style: TextStyle(color: Colors.white, fontSize: 24),
                      onChanged: (text) {
                        usermail = text;
                      },
                    ),
                    Container(height: 15),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(55),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        fillColor: Colors.white,
                        label: Text(
                          "Password",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      style: TextStyle(color: Colors.white, fontSize: 24),
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
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Stack(
          // width: double.infinity,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/background.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
            ),
            _body(),
          ],
        ),
      ),
    );
  }
}
