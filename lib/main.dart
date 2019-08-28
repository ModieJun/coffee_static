import 'package:barista_static/screens/MainScreen.dart';
import 'package:barista_static/screens/SpotPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.brown, fontFamily: "Montserrat"),
      initialRoute: "/",
      routes: {
        "/": (context) => MainScreen(),
        "/spot": (context) => SpotScreen()
      },
    );
  }
}
