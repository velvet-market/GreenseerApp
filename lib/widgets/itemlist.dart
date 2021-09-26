import 'package:flutter/material.dart';
//import 'package:route52/widgets/text_widget.dart';

// ignore: must_be_immutable
class ItemList extends StatelessWidget {
  Map<String, dynamic> list;
  ItemList({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        height: 150,
        child: Column(children: <Widget>[
          Text(
            'Items in the Bin:',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Divider(),
          Expanded(
              child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Pizza"),
                leading: Icon(Icons.local_pizza),
                trailing: Text(5.toString()),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                  title: Text("Cellphone"),
                  leading: Icon(Icons.phone_android),
                  trailing: Text(2.toString())),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                  title: Text("Glass"),
                  leading: Icon(Icons.collections),
                  trailing: Text(1.toString())),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                  title: Text("Paper"),
                  leading: Icon(Icons.book),
                  trailing: Text(5.toString()))
            ],
          ))
        ]));
  }
}
