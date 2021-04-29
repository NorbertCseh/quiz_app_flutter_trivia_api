import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/entites/question.dart';

class Questions extends ChangeNotifier {
  int numberOfQuestions;
  int category;
  String dificulty;
  List<Question> questions = [];
  Question currentQuestion;

  Questions({this.numberOfQuestions = 10, this.category, this.dificulty});

  Future<void> loadQuestions() async {
    questions.clear();
    Uri baseUrl = Uri.parse(
        'https://opentdb.com/api.php?amount=$numberOfQuestions&type=multiple');
    dynamic response =
        await http.get(baseUrl).then((value) => jsonDecode(value.body));
    for (dynamic q in response['results']) {
      Question temp = Question(q['category'], q['question'], q['difficulty'],
          q['correct_answer'], q['incorrect_answers']);
      questions.add(temp);
    }
  }

  void getQuestion(int id) {
    currentQuestion = questions[id];
    notifyListeners();
  }
}
