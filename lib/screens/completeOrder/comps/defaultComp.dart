import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appTextInput.dart';

import '../../../constants.dart';

defaultInput(IconData icon, String hintTxt) {
  return appInputFeild(
    padding: 0,
    iconBackGroundColor: Colors.transparent,
    iconColor: lightGrey,
    icon: icon,
    iconSize: 0.0375,
    height: double.infinity,
    width: double.infinity,
    bordercolor: Colors.transparent,
    borderRadius: 0,
    hintTxt: hintTxt,
  );
}
