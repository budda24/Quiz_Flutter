import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({
    @required this.text,
    @required this.style
  });
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}