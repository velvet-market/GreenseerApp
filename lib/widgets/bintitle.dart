import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bintitle extends StatefulWidget {
  Bintitle({Key? key, required this.title}) : super(key: key);
  String title;

  @override
  State<Bintitle> createState() => _BintitleState();
}

class _BintitleState extends State<Bintitle> {
// final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          child: Image.asset("assets/images/bin.jpg",
              width: MediaQuery.of(context).size.width,
              height: 100,
              fit: BoxFit.cover),
          height: 120,
        ),
        // Fill with data
        Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
