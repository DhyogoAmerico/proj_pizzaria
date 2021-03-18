import 'package:flutter/material.dart';
import 'package:proj_pizzaria/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 224, 25),
      body: ListView(
        children: [
          HomeScreen(),
        ],
      ),
    ));
  }
}
