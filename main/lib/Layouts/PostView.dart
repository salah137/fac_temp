import 'package:flutter/material.dart';
import 'PostMaker.dart';
import '../Data/Posts.dart';

class PosyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (_,int i){
        return PostLayout(post: posts[i],);
      },
    );
  }
}
