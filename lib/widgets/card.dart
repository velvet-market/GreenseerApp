import 'package:flutter/material.dart';
import 'package:route52/widgets/bintitle.dart';
import 'package:route52/widgets/info.dart';

import 'itemlist.dart';

// ignore: must_be_immutable
class Cardtile extends StatefulWidget {
  String title;
  int items;
  int maxcap;
  int wrong;
  Map<String, dynamic> list;
  String color;

  Cardtile(
      {Key? key,
      required this.title,
      required this.items,
      required this.maxcap,
      required this.wrong,
      required this.list,
      required this.color})
      : super(key: key);

  @override
  State<Cardtile> createState() => _CardtileState();
}

class _CardtileState extends State<Cardtile> {
  @override
  Widget build(BuildContext context) {
    return Card(
        // color: Colors.grey,
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
                children: [
                  Bintitle(
                    title: widget.title,
                    color: widget.color,
                  ),
                  Info(
                    key: UniqueKey(),
                    items: widget.items,
                    maxcap: widget.maxcap,
                    wrong: widget.wrong,
                  ),
                  ItemList(
                    list: widget.list,
                  )
                ])));
  }
}
