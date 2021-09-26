import 'package:flutter/material.dart';
import 'package:route52/widgets/card.dart';

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
                  children: <Widget>[
                    Cardtile(
                        key: UniqueKey(),
                        title: "Recyclable Waste",
                        items: 10,
                        maxcap: 15,
                        wrong: 3,
                        list: {
                          "Pizza": 3,
                          "Cellphone": 2,
                          "Glass": 4,
                          "Paper": 2
                        }),
                    Cardtile(
                        key: UniqueKey(),
                        title: "Non-recyclable Waste",
                        items: 20,
                        maxcap: 34,
                        wrong: 7,
                        list: {
                          "Pizza": 2,
                          "Cellphone": 0,
                          "Glass": 1,
                          "Paper": 5
                        })
                  ],
                ))));
  }
}
