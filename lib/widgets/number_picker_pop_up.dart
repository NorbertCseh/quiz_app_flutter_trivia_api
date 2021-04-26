import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class NumberPickerPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          NumberPicker(minValue: 10, maxValue: 50, value: 10, onChanged: null),
    );
  }
}
