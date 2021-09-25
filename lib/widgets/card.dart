import 'package:flutter/material.dart';
import 'package:route52/widgets/bintitle.dart';
import 'package:route52/widgets/info.dart';

import 'itemlist.dart';

class Cardtile extends StatefulWidget {
  const Cardtile({Key? key}) : super(key: key);

  @override
  State<Cardtile> createState() => _CardtileState();
}

class _CardtileState extends State<Cardtile> {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(15),
        shadowColor: Colors.lightBlue,
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Bintitle(), Info(), ItemList()])));
  }
}
