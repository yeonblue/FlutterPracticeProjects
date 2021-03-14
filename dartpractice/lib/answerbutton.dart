import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  
  final Function selectHandler;

  AnswerButton(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    var container = Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text('answer'), color: Colors.blue, onPressed: selectHandler),
    );
    return container;
  }
}
