import 'dart:ui';

import 'package:flutter/material.dart';

class Anwser extends StatelessWidget {
  const Anwser({@required this.anwserTap, this.text = const Text('')});

   static final anwsersQuestions =  [
    {
      'questionText': 'Who are you?',
      'anwser': [
        {'text':'disabled guy', 'score': 0},
        {'text':'powerfull guy','score':20},
        {'text':'beutyfull soul', 'score': 25},
        {'text':'clever guy', 'score': 15}
      ]
    },
    {
      'questionText': 'What are your dreams?',
      'anwser': [
        {'text':'living in my own commune', 'score':25},
        {'text':'opening family with Nunlaya', 'score':10},
        {'text':'changing the world', 'score':15},
        {'text':'becoming the world chempion in raceRunning', 'score': 20}
      ]
    },
    {
      'questionText': 'Where do u want to end up?',
      'anwser': [
        {'text':'Thailand Chiang Mai','score':25},
        {'text':'Thailand Chiang Mai', 'score':25},
        {'text':'Thailand Chiang Mai', 'score':25},
        {'text':'Thailand Chiang Mai','score':25},
      ]
    },
    {
      'questionText': 'Nuna disadvantages?',
      'anwser': [
        {'text':'I would need to change my believes', 'score':5},
        {'text':'Not much in common', 'score':10},
        {'text':'language barrier', 'score':25},
        {'text':'used to play with guys', 'score':20},
      ]
    },
  ];

  final Function anwserTap;
  final Text text;
  static final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: TextStyle(fontSize: 30), primary: Colors.blue);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(

      margin: EdgeInsets.only(top: 10),
      width: width/1.2,
        child: ElevatedButton(onPressed:()=> anwserTap(), style: style, child: text));

  }
}
