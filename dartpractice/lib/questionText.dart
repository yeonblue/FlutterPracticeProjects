import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  String questionText;

  QuestionText(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          this.questionText,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ));
  }
}
