import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPresshandler;
  final String answerText;
  Answer(this.answerText, this.onPresshandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: onPresshandler,
        style: ButtonStyle(
          // foregroundColor: MaterialStateProperty.all(Colors.red),
          // backgroundColor: MaterialStateProperty.all(Colors.amber),
        ),
      ),
      width: double.infinity,
      margin: EdgeInsets.all(5),
    );
  }
}
