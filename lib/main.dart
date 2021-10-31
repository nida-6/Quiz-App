import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'How would you describe yourself?',
      'answers': [
        {'text': 'Creative', 'score': 0},
        {'text': 'Friendly', 'score': 10},
        {'text': 'Smart', 'score': 20},
      ],
    },
    {
      'questionText': 'What do you think you are?',
      'answers': [
        {'text': 'Hard Working', 'score': 0},
        {'text': 'Fast Working', 'score': 10},
        {'text': 'Smart Working', 'score': 20},
      ],
    },
    {
      'questionText': 'Which one would you choose as interest?',
      'answers': [
        {'text': 'Art', 'score': 0},
        {'text': 'Mathematics/Science', 'score': 10},
        {'text': 'History', 'score': 20},
      ],
    },
    {
      'questionText': 'Which movie genre do you like the most?',
      'answers': [
        {'text': 'Acton/Horror/Adventure', 'score': 0},
        {'text': 'Comedy/Inspirational/Romance', 'score': 10},
        {'text': 'Political/History/Documentary', 'score': 20},
      ],
    },
    {
      'questionText': 'Which of these activities you enjoy the most?',
      'answers': [
        {'text': 'Exercise', 'score': 0},
        {'text': 'Movie/Music', 'score': 10},
        {'text': 'Read', 'score': 20},
      ],
    },
    {
      'questionText': 'Who would you join at a social event?',
      'answers': [
        {'text': 'Small group having a lively discussion', 'score': 0},
        {'text': 'Large group that is laughing a lot', 'score': 10},
        {'text': 'Several people playing a game', 'score': 20},
      ],
    },
    {
      'questionText': 'What kind of job is your type?',
      'answers': [
        {'text': 'Agility', 'score': 0},
        {'text': 'Strength', 'score': 10},
        {'text': 'Dexterity', 'score': 20},
      ],
    },
    {
      'questionText': 'Which kind of problem would you solve first?',
      'answers': [
        {'text': 'Economy', 'score': 0},
        {'text': 'Health', 'score': 10},
        {'text': 'Education', 'score': 20},
      ],
    },
    {
      'questionText': 'Which one are you',
      'answers': [
        {'text': 'Extrovert', 'score': 0},
        {'text': 'Introvert', 'score': 10},
        {'text': 'Ambivert', 'score': 20},
      ],
    },
    {
      'questionText': 'What is you style of thinking?',
      'answers': [
        {'text': 'Quick Thinker', 'score': 0},
        {'text': 'Creative Thinker', 'score': 10},
        {'text': 'Logical', 'score': 20},
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
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz App'),
          centerTitle: true,
        ),
        body:_questionIndex < _questions.length
            ? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,
        )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
