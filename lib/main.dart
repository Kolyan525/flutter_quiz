import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';
import './question.dart';

void main() {
  runApp(KolyaApp());
}

class KolyaApp extends StatefulWidget {
  // will be rebuilt
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _KolyaAppState();
  }
}

class _KolyaAppState extends State<KolyaApp> {
  // is persistent
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'White', 'score': 6},
        {'text': 'Purple', 'score': 4},
        {'text': 'Blue', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Sushi', 'score': 8},
        {'text': 'Chocolate Cake', 'score': 6},
        {'text': 'Spaghetti', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favorite band?',
      'answers': [
        {'text': 'Slipknot', 'score': 10},
        {'text': 'Korn', 'score': 8},
        {'text': 'Metallica', 'score': 6},
        {'text': 'Death', 'score': 4},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more!");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Kalina'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
