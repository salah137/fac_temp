import '../classs/PostClass.dart';
import 'package:flutter/material.dart';

class PostLayout extends StatelessWidget {
  final Post post;

  const PostLayout({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  decoration: BoxDecoration(
                    color: Colors.white10.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: 10
                        ),
                        child: CircleAvatar(
                            backgroundImage: NetworkImage(
                          post.creator.imageUrl,
                        )),
                      ),
                      Text(
                        post.creator.name,
                        style: TextStyle(fontSize: 20, ),
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
                  padding: EdgeInsets.only(
                    right: 50,
                  ),
                  child: IconButton(icon : Icon( Icons.favorite), onPressed: (){},),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 50,
                  ),
                  child: IconButton(icon :Icon(Icons.comment),onPressed: (){},),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child:  IconButton(icon :Icon(Icons.share),onPressed: (){},),
                )
              ],
            )
          ],
        ),
    );
  }
}
