import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appCountryPicker.dart';

import '../appTextInput.dart';

class minAppCountryPicker extends StatelessWidget {
  final String countryName;
  final String flagCode;
  final Function onChange;

  minAppCountryPicker(
      {required this.countryName,
      required this.flagCode,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return appCountryPicker(
        countryName: this.countryName,
        flagCode: this.flagCode,
        padding: 3.25,height: 0.06,
        onChange: this.onChange);
  }
}
