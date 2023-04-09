import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'appPicker.dart';

appCustomItem(
    {IconData icon = Icons.calendar_today,
    String title = 'الاشعارات',
    required Widget suffixWidget}) {
  return Container(
    color: Colors.white,
    child: Row(
      children: [
        Expanded(flex: 2, child: suffixWidget),
        Expanded(
            flex: 7,
            child: Text(
              title,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: appWidth*0.03),
            )),
        Expanded(
            flex: 1,
            child: Icon(
              icon
            )),
      ],
    ),
  );
}
