import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class QuizButton extends StatelessWidget {
  final String answerOption;

  QuizButton({@required this.answerOption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 4.0, 0, 4.0),
      child: ElevatedButton(
        style: kQuizButtonStyle,
        onPressed: () {},
        child: Text(
          answerOption,
          style: kMenuTextStyle,
        ),
      ),
    );
  }
}
