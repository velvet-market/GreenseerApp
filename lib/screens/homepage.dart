import 'package:flutter/material.dart';
import 'package:route52/widgets/card.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var trash = 0;
    for (var i = 0; i < 10; i++) {
      trash++;
    }
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                // title: Text('HOME PAGE'),
                ),
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Cardtile(
                      key: UniqueKey(),
                      title: "Paper Waste",
                      items: 0,
                      maxcap: 0,
                      wrong: 0,
                      list: {
                        "Pizza": 0,
                        "Cellphone": 0,
                        "Glass": 0,
                        "Paper": 0
                      },
                      color: "blue",
                    ),
                    Cardtile(
                      key: UniqueKey(),
                      title: "Organic Waste",
                      items: 0,
                      maxcap: 0,
                      wrong: 0,
                      list: {
                        "Pizza": 0,
                        "Cellphone": 0,
                        "Glass": 0,
                        "Paper": 0
                      },
                      color: "green",
                    ),
                    Cardtile(
                      key: UniqueKey(),
                      title: "Non-recyclable Waste",
                      items: 0,
                      maxcap: 0,
                      wrong: 0,
                      list: {
                        "Pizza": 0,
                        "Cellphone": 0,
                        "Glass": 0,
                        "Paper": 0
                      },
                      color: "yellow",
                    )
                  ],
                ))));
  }
}
