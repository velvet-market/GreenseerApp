import 'dart:async';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Info extends StatefulWidget {
  int items;
  int maxcap;
  int wrong;
  Info(
      {Key? key,
      required this.items,
      required this.maxcap,
      required this.wrong})
      : super(key: key);
  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  late int itemcount;
  late int wrongcount;
  late int max;
  Timer? timer;
  @override
  void initState() {
    // TODO: implement initState

    itemcount = widget.items;
    wrongcount = widget.wrong;
    max = widget.maxcap;
    timer = Timer.periodic(Duration(seconds: 3), (Timer t) => updateState());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void updateState() {
    setState(() {
      if (itemcount < max - 2 && wrongcount <= max / 2 + 3) {
        itemcount = itemcount + 2;
        wrongcount = ((itemcount % 2) + 1) * 2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(left: 30, top: 7, bottom: 7),
      decoration: BoxDecoration(
          // color: Colors.lightGreenAccent,
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.lightBlue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
                height: 1,
              ),
              Text(
                "Items Inside:",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                width: 10,
                height: 1,
              ),
              Text(
                itemcount.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          ),
          Row(children: [
            SizedBox(
              width: 10,
              height: 1,
            ),
            Text(
              "Wrong Items:",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: 10,
              height: 1,
            ),
            Text(
              wrongcount.toString(),
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
            )
          ]),
          Row(children: [
            SizedBox(
              width: 10,
              height: 1,
            ),
            Text(
              "Max Capacity:",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              width: 10,
              height: 1,
            ),
            Text(
              widget.maxcap.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )
          ])
        ],
      ),
    );
  }
}
