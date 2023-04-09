import 'package:flutter/material.dart';
import 'package:store2/constants.dart';

appRadioBTN(bool checked, {double size = 0.07}) {
  return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Icon(
            checked ? Icons.radio_button_checked : Icons.radio_button_off,
            size: appWidth * size,
            color: checked?Colors.black:lightGrey,
          )));
}
