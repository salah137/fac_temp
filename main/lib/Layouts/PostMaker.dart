import '../classs/PostClass.dart';
import 'package:flutter/material.dart';

class PostLayout extends StatelessWidget {
  final Post post;

  const PostLayout({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: post.post),
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  color: Colors.black87,
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundImage: NetworkImage(
                        post.creator.imageUrl,
                      )),
                      Text(
                        post.creator.name,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.favorite),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 5, 50, 5),
                  child: Icon(Icons.comment),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(50, 5, 50, 5),
                  child: Icon(Icons.share),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
