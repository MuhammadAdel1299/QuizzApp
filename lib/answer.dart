import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function x;

  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: RaisedButton(
        onPressed: x,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 30),
        ),
        color: Color.fromRGBO(0, 204, 0, 1),
        textColor: Colors.white,
      ),
    );
  }
}
