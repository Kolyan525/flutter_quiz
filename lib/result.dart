import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuizHandler;

  Result(this.resultScore, this.resetQuizHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'You seem to be old)';
    } else if (resultScore <= 15) {
      resultText = 'Hey, what a nice personality you have!';
    } else if (resultScore <= 20) {
      resultText = 'Wanna hang out?';
    } else {
      resultText = "Hmmm, strange...";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
              onPressed: resetQuizHandler,
              child: Text('Restart!'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.purpleAccent),
              )),
        ],
      ),
    );
  }
}
