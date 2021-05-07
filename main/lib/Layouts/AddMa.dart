import 'dart:ui';

import 'package:flutter/material.dart';
import '../classs/FriendClass.dart';

class AddIteme extends StatelessWidget {
  final  how;
  const AddIteme({Key key, this.how}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 500,
                height: 150,
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text(how.name, style: TextStyle(
                  fontSize: 20
                ),),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: InkWell(
                      child: Container(
                        height: 50,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("It is My Friend"),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: InkWell(
                      child: Container(
                        height: 50,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("I don't know it"),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: CircleAvatar(
              backgroundImage: NetworkImage(how.imageUrl),
              radius: 30,
            ),
          )
        ],
      ),
    );
  }
}
