import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int score;
  Function reset;

  Result(this.score, this.reset);

  String get resultPhrase {
    String resultText;
    if (score <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (score <= 13) {
      resultText = "You are pretty likeable!";
    } else if (score <= 16) {
      resultText = "You are .... Strange!";
    } else {
      resultText = "You are bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // Insert code here
  }
}
