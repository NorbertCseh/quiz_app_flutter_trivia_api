import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/entites/question.dart';
import 'package:quiz_app/entites/questions.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

class LoadingScreen extends StatefulWidget {
  static String id = 'loading_screen';
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Questions questionList = Questions();
  List<Question> qList;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      loadData();
    });
  }

  void loadData() async {
    print('start');
    await Provider.of<Questions>(context, listen: false).loadQuestions();
    Provider.of<Questions>(context, listen: false).getQuestion(0);
    print('done');
    Navigator.pushNamed(context, QuizScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('loading...'),
    );
  }
}
