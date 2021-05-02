import 'package:flutter/material.dart';
import 'FriendClass.dart';

class Post {
  final User creator;
  final double addedAt;
  final Widget post;
  final likes;
  Post(this.creator, this.addedAt, this.post, this.likes, );
}
