import 'package:flutter/material.dart';
import 'package:flutter_max_cours/quiz.dart';
import 'package:flutter_max_cours/result.dart';
import 'anwser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _totalScore = 0;

  anwserTap(int score) {
    _totalScore += score;
    setState(() {
      _index++;
    });
  }

  resetQuiz() {
    setState(() {
      _index = 0;
    });
  }

  static const textStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  var _index = 0;
  String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Life anwsers',
            style: textStyle,
            textAlign: TextAlign.center,
          ),
        ),
        body: _index < Anwser.anwsersQuestions.length
            ? Quiz(
                index: _index,
                textStyle: textStyle,
                anwserTap: anwserTap,
              )
            : Result(
                score: _totalScore,
                textStyle: textStyle,
                reseyQuiz: resetQuiz,
              ));
  }
}
