import 'package:flutter/material.dart';
import '../Layouts/StatusView.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: ListView(children: [Status()]));
  }
}
