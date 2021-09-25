import 'package:flutter/material.dart';
//import 'package:route52/widgets/text_widget.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        height: 150,
        child: Column(children: <Widget>[
          Text(
            'Items in the Bin:',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Divider(),
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 25),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Text('These are the items in the list..');
                  }))
        ]));
  }
}
