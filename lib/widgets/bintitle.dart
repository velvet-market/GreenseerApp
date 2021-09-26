import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bintitle extends StatefulWidget {
  Bintitle({Key? key, required this.title, required this.color})
      : super(key: key);
  String title;
  String color;

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
          child: Image.asset("assets/images/${widget.color}.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover),
          height: MediaQuery.of(context).size.height / 3,
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
