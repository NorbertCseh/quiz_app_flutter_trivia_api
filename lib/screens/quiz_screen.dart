import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class QuizScreen extends StatelessWidget {
  static String id = 'quiz_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.blueGrey.shade700,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: Text(
                    'Back',
                    style: kQuizAppBarTextStlye,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                TextButton(
                  onPressed: null,
                  child: Text(
                    'Score: 1/10',
                    style: kQuizAppBarTextStlye,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20, 8.0, 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 25.0),
                  text:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: kQuizButtonStyle,
                  onPressed: null,
                  child: Text(
                    'Answer 1',
                    style: kMenuTextStyle,
                  ),
                ),
                ElevatedButton(
                  style: kQuizButtonStyle,
                  onPressed: null,
                  child: Text(
                    'Answer 2',
                    style: kMenuTextStyle,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: kQuizButtonStyle,
                  onPressed: null,
                  child: Text(
                    'Answer 3',
                    style: kMenuTextStyle,
                  ),
                ),
                ElevatedButton(
                  style: kQuizButtonStyle,
                  onPressed: null,
                  child: Text(
                    'Answer 4',
                    style: kMenuTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
