import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback restartFunction;

  Result({required this.totalScore, required this.restartFunction});

  String get resultText {
    if(totalScore <= 15){
      return 'You are awesome';
    } else if(totalScore <= 24){
      return 'You are nice person';
    } else if(totalScore >= 30){
      return 'You are not that bad';
    }else {
      return 'You are bad';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultText,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(onPressed: restartFunction, child: Text('Start Again'))
        ],
      ),
    );
  }
}
