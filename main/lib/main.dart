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
      home: DefaultTabController(
         initialIndex: 0,
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                  Tab(icon: Icon(Icons.home),text: "Home",)
              ],
            ),

          ),
          body: TabBarView(
            children: [
              Home()
            ],
          ),
        ),
      ) // home: ,
    );
  }
}
