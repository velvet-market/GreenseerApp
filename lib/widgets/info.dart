import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(left: 30, top: 7, bottom: 7),
      decoration: BoxDecoration(
          // color: Colors.lightGreenAccent,
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.yellowAccent],
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
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                width: 10,
                height: 1,
              ),
              Text(
                "10",
                style: TextStyle(
                    color: Colors.black,
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
              "3",
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
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: 10,
              height: 1,
            ),
            Text(
              "15",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
            )
          ])
        ],
      ),
    );
  }
}
