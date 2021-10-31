import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 50) {
      resultText = 'You are THE GUIDER!';
    } else if (resultScore <= 100 ) {
      resultText = 'You are THE ARTIST!';
    } else if (resultScore <= 150) {
      resultText = 'You are THE LEADER!';
    }  else if (resultScore <= 200) {
        resultText = 'You are THE SCIENTIST!';
    } else {
      resultText = 'You are NOTHING!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.cyan,
            onPressed: () => resetHandler(),
          ),
        ],
      ),
    );
  }
}
