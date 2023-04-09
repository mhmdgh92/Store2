import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

productTimer({double textSize=0.0275}) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      color: appColor1,
      borderRadius: BorderRadius.all(
          Radius.circular(3.5)),
    ),
    child: Row(
      children: [
        Expanded(
            flex: 1,
            child: Icon(
              Icons.timer,
              size: appWidth * 0.03,
              color: Color(0xFFFFD750),
            )),
        Expanded(
          flex: 3,
          child: Text(
            '01:23:59:58',
            style: TextStyle(
                fontSize: appWidth * textSize,
                color: Color(0xFFFFD750)),
          ),
        ),
      ],
    ),
  );
}