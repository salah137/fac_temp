import 'package:flutter/material.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         canvasColor: Colors.blueGrey.withOpacity(0.5),
        primarySwatch: Colors.indigo,
      ),
      home: Home(), // home: ,
    );
  }
}
