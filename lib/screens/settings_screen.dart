import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class SettingScreen extends StatefulWidget {
  static String id = 'setting_screen';

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int numberOfQuetions = 10;
  dynamic selectedCatergory = 0;
  Map<dynamic, String> categories = {
    0: 'Any category',
    9: 'General Knowledge',
    10: 'Entertainment: Books',
    11: 'Entertainment: Film',
    12: 'Entertainment: Music',
    13: 'Entertainment: Musicals & Theatres',
    14: 'Entertainment: Television',
    15: 'Entertainment: Video Games',
    16: 'Entertainment: Board Games',
    17: 'Science & Nature',
    18: 'Science: Computers',
    19: 'Science: Mathematics',
    20: 'Mythology',
    21: 'Sports',
    22: 'Geography',
    23: 'History',
    24: 'Politics',
    25: 'Art',
    26: 'Celebrities',
    27: 'Animals',
    28: 'Vehicles',
    29: 'Entertainment: Comics',
    30: 'Science: Gadgets',
    31: 'Entertainment: Japanese Anime & Manga',
    32: 'Entertainment: Cartoon & Animations',
  };

  List<String> dificulties = ['easy', 'medium', 'hard'];
  String selectedDificulty = 'medium';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back'),
        ),
      ),
      body: Container(
        color: Colors.blueGrey.shade700,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Number of questions:',
                        style: TextStyle(fontSize: 20.0)),
                  ),
                  NumberPicker(
                      itemHeight: 25,
                      minValue: 10,
                      maxValue: 50,
                      value: numberOfQuetions,
                      onChanged: (newValue) {
                        setState(() {
                          numberOfQuetions = newValue;
                        });
                      })
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: 'Select a category:',
                    style: TextStyle(fontSize: 20.0)),
              ),
            ),
            DropdownButton(
              items: categories
                  .map((key, value) {
                    return MapEntry(
                        key,
                        DropdownMenuItem<String>(
                          value: key.toString(),
                          child: Text(value),
                        ));
                  })
                  .values
                  .toList(),
              value: selectedCatergory.toString(),
              onChanged: (newValue) {
                setState(() {
                  selectedCatergory = newValue;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                          text: 'Select a dificulty:',
                          style: TextStyle(fontSize: 20.0)),
                    ),
                  ),
                  DropdownButton(
                    items: dificulties
                        .map((e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ))
                        .toList(),
                    value: selectedDificulty,
                    onChanged: (newValue) {
                      setState(() {
                        selectedDificulty = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
