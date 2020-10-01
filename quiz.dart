import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
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
  }
}
