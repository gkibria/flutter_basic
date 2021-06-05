import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What is your favorite game?',
      'answers': [
        {'text': 'GTA', 'score': 10},
        {'text': 'Road Rash', 'score': 8},
        {'text': 'NFS', 'score': 5},
        {'text': 'Age of Empires', 'score': 3},
      ]
    },
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 8},
        {'text': 'Purple', 'score': 5},
        {'text': 'Green', 'score': 3},
      ]
    },
    {
      'questionText': 'What is your favorite movie?',
      'answers': [
        {'text': 'Lords of the Rings', 'score': 10},
        {'text': 'Jurassic Park', 'score': 8},
        {'text': 'Titanic', 'score': 5},
        {'text': 'Shrek', 'score': 3},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      this._questionIndex += 1;
      this._totalScore += score;
    });
    print('Total Score: $_totalScore');
  }

  void _restartQuiz(){
    setState(() {
      this._questionIndex = 0;
      this._totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Basics'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result(totalScore: _totalScore, restartFunction: _restartQuiz,)),
    );
  }
}
