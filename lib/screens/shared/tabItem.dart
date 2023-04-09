import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants.dart';

tabItem(
    {IconData prefixIcon = Icons.info_outline_rounded,
    required String title,
    String additionalTitle = '',
    IconData suffixIcon = Icons.keyboard_arrow_left_rounded,
    Color prefixIconColor = Colors.black,
    Color suffixIconColor = Colors.grey,
    Color textColor = Colors.black,
    int additionalTxtFlex=1}) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      color: Colors.white,
      width: appWidth * 0.9,
      height: appHeight * 0.065,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Icon(
                suffixIcon,
                size: 0.04 * appHeight,
                color: suffixIconColor,
              )),
          Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(
                      flex: additionalTxtFlex,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          additionalTitle,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: appColor1,
                              fontSize: 0.022 * appHeight,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: textColor,
                            fontSize: 0.022 * appHeight,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              )),
          Expanded(
              flex: 1,
              child: Icon(
                prefixIcon,
                color: prefixIconColor,
                size: 0.034 * appHeight,
              )),
        ],
      ),
    ),
  );
}
