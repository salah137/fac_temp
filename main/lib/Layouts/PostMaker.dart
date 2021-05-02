import '../classs/PostClass.dart';
import 'package:flutter/material.dart';

class PostLayout extends StatelessWidget {
  final Post post;

  const PostLayout({Key key, this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 200,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(post.creator.imageUrl),
                  radius: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: Text(
                    post.creator.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(color: Colors.black12, child: post.post),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${post.likes} like"),
            ],
          ),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      icon: Icon(Icons.favorite_border), onPressed: () {})
                ],
              ),
              SizedBox(
                width: 250,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(icon: Icon(Icons.comment), onPressed: (){})
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
