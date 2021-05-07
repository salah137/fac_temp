import 'package:flutter/material.dart';
import '../classs/FriendClass.dart';

class AddIteme extends StatelessWidget {
  final User how;
  const AddIteme({Key key, this.how}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: 200,
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text(how.name),
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
                        child: Text("Add"),
                      ),
                    ),
                  ),
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
                        child: Text("Add"),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(how.imageUrl),
            radius: 50,
          )
        ],
      ),
    );
  }
}
