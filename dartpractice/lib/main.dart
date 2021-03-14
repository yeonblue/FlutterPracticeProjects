import 'package:flutter/material.dart';
import './questionText.dart';
import './answerbutton.dart';
void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstAppState();
  }
}

class _FirstAppState extends State<FirstApp> {
  var _questionIndex = 0;

  void _answerButtonTapped() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('First Flutter App')),
      body: Column(
        children: [
          QuestionText(questions[_questionIndex]),
          AnswerButton(_answerButtonTapped),
          AnswerButton(_answerButtonTapped),
          AnswerButton(_answerButtonTapped),
        ],
      ),
    ));
  }
}
