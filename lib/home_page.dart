import 'package:flutter/material.dart';
import 'package:my_app/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.grey[900]),
              currentAccountPicture: ClipOval(
                child: Image.asset(
                  "assets/images/shiftpower.webp",
                ),
              ),
              accountName: Text(
                "Carlos Henrique Moreira",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              accountEmail: Text("chmlima201@gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.blue),
              title: Text("Inicio", style: TextStyle(fontSize: 18)),
              subtitle: Text("Tela de inicio"),
              onTap: () {
                print("Hello");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
              ),
              title: Text("Sair", style: TextStyle(fontSize: 18)),
              subtitle: Text("Encerrar sessão"),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          CustomSwitch(),
        ],
        title: const Center(
          child: Text("Home Page"),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: null,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {
          setState(() {
            print("Hello World");
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.darkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
