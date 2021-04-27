import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/quiz_button.dart';

class QuizScreen extends StatelessWidget {
  static String id = 'quiz_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey.shade900,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8.0, 20, 8.0, 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(fontSize: 25.0),
                    text:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  ),
                ),
              ),
              QuizButton(
                answerOption: 'answerOption1',
              ),
              QuizButton(
                answerOption: 'answerOption2',
              ),
              QuizButton(
                answerOption: 'answerOption3',
              ),
              QuizButton(
                answerOption: 'answerOption4',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
