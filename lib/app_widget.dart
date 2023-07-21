import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green, brightness: Brightness.dark),
      home: HomePage(),
    );
  }
}
