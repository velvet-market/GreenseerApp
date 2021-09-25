import 'package:flutter/material.dart';

class Bintitle extends StatefulWidget {
  const Bintitle({Key? key}) : super(key: key);

  @override
  State<Bintitle> createState() => _BintitleState();
}

class _BintitleState extends State<Bintitle> {
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
          'Paper Bin',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
