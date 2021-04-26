import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/screens/settings_screen.dart';

class MenuScreen extends StatefulWidget {
  static String id = 'menu_screen';

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.blueGrey.shade700,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextButton(
                style: kMenuButtonStyle,
                onPressed: () {
                  Navigator.pushNamed(context, QuizScreen.id);
                },
                child: Text(
                  'Quiz',
                  style: kMenuTextStyle,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextButton(
                style: kMenuButtonStyle,
                onPressed: () {
                  Navigator.pushNamed(context, SettingScreen.id);
                },
                child: Text(
                  'Settings',
                  style: kMenuTextStyle,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextButton(
                style: kMenuButtonStyle,
                onPressed: null,
                child: Text(
                  'Button 3',
                  style: kMenuTextStyle,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextButton(
                style: kMenuButtonStyle,
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: Text(
                  'Exit',
                  style: kMenuTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
