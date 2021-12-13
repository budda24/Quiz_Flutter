import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
      {@required this.textStyle,
      @required this.score,
      @required this.reseyQuiz});

  final TextStyle textStyle;
  final int score;
  final Function reseyQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text(
          "U know what to do now :) you get $score % chances",
          style: textStyle,
        ),
      ),
      TextButton(
        onPressed: reseyQuiz,
        child: Text(
          'Reset the Quiz',
          style: TextStyle(backgroundColor: Colors.blue, fontSize: 40, color: Colors.white),
        ),
      ),
    ]);
  }
}
