import 'package:flutter/cupertino.dart';
//import'package:flutter/foundation.dart'

class Question {
  final String title;
  final List<Map> answers;

  Question({@required this.title, @required this.answers});
}

class QuestionData {
  final _data = [
    Question(title: '1. Кем хочешь стать?', answers: [
      {'answer': 'програмистом!', 'isCorrect': 1},
      {'answer': 'врачем!'},
      {'answer': 'музыкантом!'},
      {'answer': 'футболистом'},
    ]),
    Question(title: '2. Кем хочешь стать?', answers: [
      {'answer': 'програмистом!', 'isCorrect': 1},
      {'answer': 'врачем!'},
      {'answer': 'музыкантом!'},
      {'answer': 'футболистом'},
    ]),
    Question(title: '3. Кем хочешь стать?', answers: [
      {'answer': 'програмистом!', 'isCorrect': 1},
      {'answer': 'врачем!'},
      {'answer': 'музыкантом!'},
      {'answer': 'футболистом'},
    ]),
    Question(title: '4. Кем хочешь стать?', answers: [
      {'answer': 'програмистом!', 'isCorrect': 1},
      {'answer': 'врачем!'},
      {'answer': 'музыкантом!'},
      {'answer': 'футболистом'},
    ]),
  ];

  List<Question> get questions=>[..._data];
}
