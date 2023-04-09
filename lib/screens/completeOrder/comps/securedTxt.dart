import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../constants.dart';

securedTxt() {
  txt1(String str) {
    return Text(
      str,
      textDirection: TextDirection.rtl,
      style: TextStyle(fontSize: appWidth * 0.028, color: appColor4),
    );
  }

  return Row(
    children: [
      Expanded(flex: 2, child: Container()),
      Expanded(flex: 2, child: txt1('دفع أمن')),
      Expanded(
          flex: 1,
          child: Icon(
            Icons.lock,
            color: lightGreen,
          )),
      Expanded(flex: 1, child: Container()),
      Expanded(flex: 2, child: txt1('SSL 128-bit')),
      Expanded(flex: 2, child: txt1('اتصال بتشفير')),
      Expanded(
          flex: 1,
          child: Icon(
            Icons.lock,
            color: lightGreen,
          )),
      Expanded(flex: 2, child: Container()),
    ],
  );
}
