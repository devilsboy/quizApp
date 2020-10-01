import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

var _totalScore = 0;

class _MyAppState extends State<MyApp> {
  @override
  void _pressed(int score) {
//Rohan ke dost
    }
  }

  void _resetQuiz() {
    // @Chahat insert here
  }

  var _questionIndex = 0;
  var _questions = [
    {
      "questionText": "What's your favoriate color?",
      'answers': [
        {'text': 'Blue', 'score': 5},
        {'text': 'White', 'score': 1},
        {'text': 'Red', 'score': 8},
        {'text': 'Orange', 'score': 4}
      ]
    },
    {
      "questionText": "What's your favorite animal?",
      'answers': [
        {'text': 'Horse', 'score': 2},
        {'text': 'Zebra', 'score': 6},
        {'text': 'Cat', 'score': 4},
        {'text': 'Dog', 'score': 3}
      ]
    },
    {
      "questionText": "What's your favoriate planet?",
      'answers': [
        {'text': 'Earth', 'score': 1},
        {'text': 'Pluto', 'score': 10},
        {'text': 'Neptune', 'score': 8},
        {'text': 'Mercury', 'score': 5}
      ]
    }
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                pressed: _pressed,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
