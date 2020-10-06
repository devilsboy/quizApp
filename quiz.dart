import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  // here
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function pressed;

  Quiz({
    @required this.questions,
    @required this.pressed,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    // Insert quiz code here
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => pressed(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
