import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NormalButton extends StatefulWidget {
  final Color color;
  final BorderRadius radius;
  final Text text;
  var func;

  NormalButton(
      {required Key key,
      required this.color,
      required this.radius,
      required this.text,
      required this.func})
      : super(key: key);
  @override
  _NormalButtonState createState() =>
      _NormalButtonState(color, radius, text, func);
}

class _NormalButtonState extends State<NormalButton> {
  final Color color;
  final BorderRadius radius;
  final Text text;
  var func;

  _NormalButtonState(this.color, this.radius, this.text, this.func);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        constraints: BoxConstraints(maxWidth: 400),
        height: 48,
        decoration: BoxDecoration(color: color, borderRadius: radius),
        child: Center(
          child: text,
        ),
      ),
      onTap: func,
    );
  }
}
