import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/entites/question.dart';
import 'package:quiz_app/entites/questions.dart';
import 'package:quiz_app/widgets/quiz_button.dart';

class QuizScreen extends StatefulWidget {
  static String id = 'quiz_screen';

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int questionId = 0;
  int correctAnswers = 0;
  List<String> mixedAnswers;

  String questionText;
  String answer1;
  String answer2;
  String answer3;
  String answer4;
  bool isLastQuestion = false;

  updateQuestion() {
    questionId++;
    setState(() {
      Provider.of<Questions>(context, listen: false).getQuestion(questionId);
    });
    if (questionId ==
        Provider.of<Questions>(context, listen: false).numberOfQuestions - 1) {
      isLastQuestion = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    questionText = Provider.of<Questions>(context).currentQuestion.question;
    answer1 = Provider.of<Questions>(context).currentQuestion.mixedAnswers[0];
    answer2 = Provider.of<Questions>(context).currentQuestion.mixedAnswers[1];
    answer3 = Provider.of<Questions>(context).currentQuestion.mixedAnswers[2];
    answer4 = Provider.of<Questions>(context).currentQuestion.mixedAnswers[3];

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey.shade900,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child:
                        Text('$correctAnswers/${(questionId + 1).toString()}'),
                  ),
                  TextButton(
                    onPressed: isLastQuestion ? null : updateQuestion,
                    child: Text('Next question'),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8.0, 20, 8.0, 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(fontSize: 25.0),
                    text: questionText,
                  ),
                ),
              ),
              QuizButton(
                answerOption: answer1,
              ),
              QuizButton(
                answerOption: answer2,
              ),
              QuizButton(
                answerOption: answer3,
              ),
              QuizButton(
                answerOption: answer4,
              ),
              Text(Provider.of<Questions>(context)
                  .currentQuestion
                  .correctAnswer),
            ],
          ),
        ),
      ),
    );
  }
}
