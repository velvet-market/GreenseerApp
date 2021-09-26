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
                widget.items.toString(),
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
              widget.wrong.toString(),
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
