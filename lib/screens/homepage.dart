import 'package:flutter/material.dart';
import 'package:route52/widgets/bintitle.dart';
import 'package:route52/widgets/card.dart';
import 'package:route52/widgets/info.dart';
import 'package:route52/widgets/itemlist.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('HOME PAGE'),
            ),
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[Cardtile()],
                ))));
  }
}
