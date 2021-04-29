import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/entites/questions.dart';
import 'package:quiz_app/screens/loading_screen.dart';
import 'package:quiz_app/screens/menu_screen.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/screens/settings_screen.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Questions(),
      child: MaterialApp(
        home: MenuScreen(),
        theme: ThemeData.dark(),
        initialRoute: MenuScreen.id,
        routes: {
          MenuScreen.id: (context) => MenuScreen(),
          LoadingScreen.id: (context) => LoadingScreen(),
          QuizScreen.id: (context) => QuizScreen(),
          SettingScreen.id: (context) => SettingScreen(),
        },
      ),
    );
  }
}
