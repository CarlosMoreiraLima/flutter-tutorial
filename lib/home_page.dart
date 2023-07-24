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
      appBar: AppBar(
        actions: [
          CustomSwitch(),
        ],
        title: Center(
          child: Text("Home Page"),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          // scrollDirection: Axis.vertical,
          children: [
            Text(
              "Counter: ",
              style: TextStyle(fontSize: 36),
            ),
            CustomSwitch(),
            Container(height: 30),
            CustomSwitch(),
            Container(height: 30),
            CustomSwitch(),
            Container(height: 30),
            CustomSwitch(),
            Container(height: 30),
            CustomSwitch(),
            Container(height: 30),
            CustomSwitch(),
            Container(height: 30),
            CustomSwitch(),
            Container(height: 30),
            CustomSwitch(),
            Container(height: 30),
            CustomSwitch(),
            Container(height: 30),
            CustomSwitch(),
            Container(height: 30),
            CustomSwitch(),
            Container(height: 30),
            CustomSwitch(),
            Container(height: 30),
            CustomSwitch(),
            Container(height: 30),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
        onPressed: () {
          setState(() {
            print("Hello World");
          });
        },
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
