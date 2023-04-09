import 'package:flutter/material.dart';
import '../appTextInput.dart';

class minAppTextInput extends StatelessWidget {
  final String hintTxt;
  final IconData icon;
  final bool SecuredTxt;
  final double width;
  final int iconFlex;

  minAppTextInput(
      {required this.hintTxt,
      required this.icon,
      this.SecuredTxt = false,
      this.width = 0.77,
      this.iconFlex=1});

  @override
  Widget build(BuildContext context) {
    return appInputFeild(
        hintTxt: hintTxt,
        icon: this.icon,
        SecuredTxt: this.SecuredTxt,
        padding: 3.25,
        height: 0.06,
        width: this.width,
        iconFlex:iconFlex);
  }
}
