import '../classs/PostClass.dart';
import 'package:flutter/material.dart';

class PostLayout extends StatelessWidget {
  final Post post;

  const PostLayout({Key key, this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      child: Column(
        children: [
          Row(
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

          post.post,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${post.likes} like"
              ),
            ],
          )
        ],
      ),
    );
  }
}
