import 'package:flutter/material.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool typing = false;

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
            title: typing ? TextBox() : Text("Fac"),
            leading: IconButton(
              icon: Icon(typing ? Icons.search : Icons.search),
              onPressed: () {
                setState(() {
                  typing = !typing;
                });
              },
            ),
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
class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        color: Colors.white,

      ),
      child: TextField(
        decoration:
        InputDecoration(border: InputBorder.none, hintText: 'Search', enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    ),
      ),
    );
  }
}