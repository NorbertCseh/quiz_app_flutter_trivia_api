import 'package:flutter/material.dart';
import 'package:quiz_app/entites/questions.dart';
import 'package:quiz_app/screens/loading_screen.dart';
import 'package:quiz_app/screens/settings_screen.dart';
import 'package:quiz_app/widgets/menu_button.dart';

class MenuScreen extends StatefulWidget {
  static String id = 'menu_screen';

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  Questions questions = Questions();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Container(
        color: Colors.blueGrey.shade900,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MenuButton(
              buttonText: 'Quiz',
              routeDestination: LoadingScreen.id,
            ),
            MenuButton(
              buttonText: 'Settings',
              routeDestination: SettingScreen.id,
            ),
          ],
        ),
      ),
    );
  }
}
