import 'package:facemu/classs/FriendClass.dart';
import 'package:flutter/material.dart';
import '../Data/Friends.dart';
import '../Layouts/AddMa.dart';

class FriendScreen extends StatefulWidget {
  FriendScreen({Key key}) : super(key: key);

  @override
  _FriendScreenState createState() => _FriendScreenState();
}

class _FriendScreenState extends State<FriendScreen> {

  var usedList = users.where((e){
   return e.added == false;
  }).toList();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: usedList.length,
      itemBuilder: (_, i) {
        return AddIteme(
          how: usedList[i],
        );
      },
    ));
  }
}
