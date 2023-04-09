import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appCountryPicker.dart';
import 'package:store2/screens/shared/appPicker.dart';

import '../appTextInput.dart';

class minAppPicker extends StatelessWidget {
  final Function onChange;
  final String data;
  final String title;

  minAppPicker(
      {required this.data, required this.onChange, required this.title});

  @override
  Widget build(BuildContext context) {
    return appPicker(
        title: this.title,
        data: this.data,
        padding: 3.5,
        height: 0.06,
        onChange: this.onChange);
  }
}
