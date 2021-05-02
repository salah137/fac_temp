import 'package:facemu/classs/StatusClass.dart';
import 'package:flutter/material.dart';

class ItemStatus extends StatelessWidget {
  final Statue item;

  const ItemStatus({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        margin: EdgeInsets.all(10),
        height: 150,
        width: 100,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
                height: 150,
                width: 100,
                child: ClipRRect(
                  child: Image.network(
                    item.image,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                )),
            Container(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                backgroundImage: NetworkImage(item.creator.imageUrl, ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
