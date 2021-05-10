import 'package:flutter/material.dart';
import '../classs/PostClass.dart';
import 'Friends.dart';

List<Post> posts = [
  Post(
      users[0],
      20.2,
      Column(
        children: [
          Container(
              color: Colors.white,
              margin: EdgeInsets.all(10),
              child: SelectableText("Soooo soo good")),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.black12,
            height: 200,
            width: double.infinity,
            child: Image(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80"),
            ),
          )
        ],
      ),
      12),
  Post(
      users[1],
      19,
      Container(
        alignment: Alignment.center,
        height: 200,
        width: double.infinity - 20,
        color: Colors.red,
        child: SelectableText("I am funny hhhhh"),
      ),
      10),
  Post(
      users[3],
      10,
      Container(
          color: Colors.black12,
          height: 200,
          width: double.infinity - 20,
          child: Image(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&w=1000&q=80"),
          )),
      2),
  Post(
      users[2],
      8.00,
      Container(
        alignment: Alignment.center,
        height: 200,
        width: double.infinity - 20,
        color: Colors.amber,
        child: SelectableText("Hello Every Body"),
      ),
      1)
];
