import 'package:flutter/material.dart';
import 'pages/home.dart';
//import 'pages/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var themeData = ThemeData(
      primaryColor: Colors.black,
        primaryColorLight: Colors.white,
        accentColor: Colors.amber,

    );
    return MaterialApp(
      title: 'SmartCeps',
      theme: themeData,
      home: Home()
    );
  }  
}


