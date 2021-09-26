import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:route52/widgets/text_widget.dart';

class ItemList extends StatefulWidget {
  Map<String, dynamic> list;
  ItemList({Key? key, required this.list}) : super(key: key);
  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  late int first;
  late int second;
  late int third;
  late int fourth;
  Timer? timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    first = widget.list['Pizza'];
    second = widget.list['Cellphone'];
    third = widget.list['Glass'];
    fourth = widget.list['Paper'];
    timer = Timer.periodic(Duration(seconds: 3), (Timer t) => updateState());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void updateState() {
    setState(() {
      first++;
      second = ((first % 2) + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        height: 150,
        child: Column(children: <Widget>[
          Text(
            '',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Divider(),
          Expanded(
              child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Trash"),
                leading: Icon(Icons.local_pizza),
                trailing: Text(first.toString()),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                  title: Text("EWaste"),
                  leading: Icon(Icons.phone_android),
                  trailing: Text(second.toString())),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                  title: Text("Glass"),
                  leading: Icon(Icons.collections),
                  trailing: Text(third.toString())),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                  title: Text("Paper"),
                  leading: Icon(Icons.book),
                  trailing: Text(fourth.toString()))
            ],
          ))
        ]));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
