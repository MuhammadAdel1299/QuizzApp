import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _totalScore = 0;
  int _questionIndex = 0;
  int num0 = 0, num1 = 0, num2 = 0, num3 = 0, num4 = 0;

  void answerQuestion(score) {
    if (_questionIndex == 0)
      num0 = score;
    else if (_questionIndex == 1)
      num1 = score;
    else if (_questionIndex == 2) num2 = score;

    setState(() {
      _totalScore += score;
      _questionIndex += 1;
    });
    print('Question index = $_questionIndex');
    print('num0 = $num0');
    print('num1 = $num1');
    print('num2 = $num2');
    print('num3 = $num3');
    print('num4 = $num4');
    print('total score = $_totalScore');
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
      num3 = 0;
      num4 = 0;
    });
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s The Color Of The Sky ?',
      'answers': [
        {'text': 'Pink', 'score': 0},
        {'text': 'White', 'score': 0},
        {'text': 'Blue', 'score': 20},
        {'text': 'Red', 'score': 0}
      ]
    },
    {
      'questionText': 'Where Does The Sun Rise From ?',
      'answers': [
        {'text': 'The North', 'score': 0},
        {'text': 'The West', 'score': 0},
        {'text': 'The South', 'score': 0},
        {'text': 'The East', 'score': 20}
      ]
    },
    {
      'questionText': 'What Is The Largest Animal On Earth ?',
      'answers': [
        {'text': 'The Blue Whale', 'score': 0},
        {'text': 'The Elephant', 'score': 0},
        {'text': 'The Giraffe', 'score': 20},
        {'text': 'The Lion', 'score': 0}
      ]
    },
    {
      'questionText': 'All Of The Following Animals Are Cats Except... ?',
      'answers': [
        {'text': 'Lions', 'score': 0},
        {'text': 'Wolfs', 'score': 20},
        {'text': 'Tigers', 'score': 0},
        {'text': 'Cheetahs', 'score': 0}
      ]
    },
    {
      'questionText': 'Any Of These Animals Could Be Pets ?',
      'answers': [
        {'text': 'Birds', 'score': 20},
        {'text': 'Loins', 'score': 0},
        {'text': 'Cats', 'score': 20},
        {'text': 'Monkeys', 'score': 0}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App' ),
          centerTitle: true,
            backgroundColor: Color.fromRGBO(153, 255, 51, 1),
        ),
        body: Container(
          color: Color.fromRGBO(153, 255, 100, 0.8),
          child: _questionIndex < _question.length
              ? Quiz(_question, _questionIndex, answerQuestion)
              : Result(_resetQuiz, _totalScore),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            if (_questionIndex == 1)
              _totalScore -= num0;
            else if (_questionIndex == 2)
              _totalScore -= num1;
            else if (_questionIndex == 3)
              _totalScore -= num2;
            else if (_questionIndex == 4)
              _totalScore -= num3;
            else if (_questionIndex == 4)
              _totalScore -= num4;

            setState(() {
              if (_questionIndex > 0) {
                _questionIndex--;
              }
            });
            print('Question index = $_questionIndex');
            print('total score = $_totalScore');
          },
          backgroundColor: Color.fromRGBO(0, 204, 0, 1),
          splashColor: Color.fromRGBO(0, 222, 0, 1),
          tooltip: 'Back',
        ),
      ),
    );
  }
}
