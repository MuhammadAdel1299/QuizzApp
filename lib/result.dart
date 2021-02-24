import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function q;
  final int resultScore;

  String get result {
    String resultText;
    if (resultScore >= 80) {
      resultText = 'You Are Awesome';
    } else if (resultScore >= 60) {
      resultText = 'You Are Perfect';
    } else if (resultScore >= 40) {
      resultText = 'You Are Good';
    } else {
      resultText = 'You Are Bad';
    }
    return resultText;
  }

  Result(this.q, this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Score Is  $resultScore',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            textAlign: TextAlign.center,
          ),
          Text(
            result,
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.w800),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: q,
            child: Text(
              'Quiz Again',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(0, 153, 0, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
