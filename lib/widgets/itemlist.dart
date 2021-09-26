import 'package:flutter/material.dart';
//import 'package:route52/widgets/text_widget.dart';

// ignore: must_be_immutable
class ItemList extends StatelessWidget {
  Map<String, dynamic> list;
  ItemList({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var trashVar = 0;
    var eVar = 0;
    var glassVar = 0;
    var paperVar = 0;
    for (int i = 0; i < 10; i++) {
      trashVar++;
    }
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
                trailing: Text(trashVar.toString()),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                  title: Text("EWaste"),
                  leading: Icon(Icons.phone_android),
                  trailing: Text(eVar.toString())),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                  title: Text("Glass"),
                  leading: Icon(Icons.collections),
                  trailing: Text(glassVar.toString())),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                  title: Text("Paper"),
                  leading: Icon(Icons.book),
                  trailing: Text(paperVar.toString()))
            ],
          ))
        ]));
  }
}
