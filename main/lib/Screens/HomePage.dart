import 'package:flutter/material.dart';
import '../Layouts/StatusView.dart';
import '../Layouts/PostView.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
            height: 150,
            child: Status()),
        SizedBox(height: 15,),
        Container(
            height: 500,
            child: PosyView()),
      ],
    )
    );
  }
}
