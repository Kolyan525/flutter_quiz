import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectAnswerHandler;
  final String answerText;

  Answer(this.selectAnswerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
        ),
        onPressed: selectAnswerHandler,
      ),
    );
  }
}
