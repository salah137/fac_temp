import 'package:flutter/material.dart';
import '../Data/Status.dart';
import 'StatuMAker.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: statues.length,
      itemBuilder: (_,i){
        return ItemStatus(item: statues[i],);
      },
    );
  }
}
