import 'package:flutter/material.dart';

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
        title: Center(
          child: Text("Home Page"),
        ),
      ),
      body: Container(
        height: 300,
        width: 300,
        color: Colors.white,
        child: Center(
            child: Container(
          height: 100,
          width: 100,
          color: Colors.green,
        )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            print("Hel lo World");
          });
        },
      ),
    );
  }
}
