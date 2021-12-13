import 'package:flutter/material.dart';
import 'package:flutter_max_cours/question.dart';

import 'anwser.dart';

class Quiz extends StatelessWidget {
  const Quiz({ @required this.index, @required this.textStyle, @required this.anwserTap});
  final int index;
  final TextStyle textStyle;
  final Function anwserTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Question(
            style: textStyle,
            text: Anwser.anwsersQuestions[index]['questionText']
                .toString(),
          ),
          ...(Anwser.anwsersQuestions[index]['anwser']
          as List<Map<String, Object>>)
              .map((anwser) {
            return Anwser(anwserTap: ()=> anwserTap(anwser['score']), text: Text(anwser['text'] as String));
          }),
        ],
      ),
    );
  }
}