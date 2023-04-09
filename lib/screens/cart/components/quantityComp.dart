import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

quantityComp({
  Color signsColor = Colors.black,
  double size = 0.05
}) {
  return Container(
    height: double.infinity,
    decoration: BoxDecoration(
        border: Border.all(color: appBorderColor, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(6.0))),
    child: Row(
      children: [
        Expanded(
            flex: 1,
            child: Text('+',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: signsColor, fontSize: appWidth * size))),
        Expanded(
            flex: 1,
            child: Text('1',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: appWidth * 0.045))),
        Expanded(
            flex: 1,
            child: Text('–',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: signsColor, fontSize: appWidth * size))),
      ],
    ),
  );
}
