import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class MenuButton extends StatelessWidget {
  final buttonText;
  final routeDestination;

  MenuButton({@required this.buttonText, @required this.routeDestination});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: TextButton(
        style: kMenuButtonStyle,
        onPressed: () {
          Navigator.pushNamed(context, routeDestination);
        },
        child: Text(
          buttonText,
          style: kMenuTextStyle,
        ),
      ),
    );
  }
}
