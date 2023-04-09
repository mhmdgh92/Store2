import 'package:flutter/material.dart';

import '../../constants.dart';

minTabItem(
    {IconData prefixIcon = Icons.info_outline_rounded,
    required String title,
    IconData suffixIcon = Icons.keyboard_arrow_left_rounded,
    Color prefixIconColor = Colors.black}) {
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: Container(
      color: Colors.white,
      width: appWidth * 0.9,
      height: appHeight * 0.055,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Icon(
                suffixIcon,
                color: Colors.grey,
              )),
          Expanded(
              flex: 7,
              child: Text(
                title,
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Expanded(
              flex: 1,
              child: Icon(
                prefixIcon,
                color: prefixIconColor,
              )),
        ],
      ),
    ),
  );
}

minTabItemImg(
    {required String imageName,
    required String title,
    IconData suffixIcon = Icons.keyboard_arrow_left_rounded}) {
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: Container(
      color: Colors.white,
      width: appWidth * 0.9,
      height: appHeight * 0.055,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Icon(
                suffixIcon,
                color: Colors.grey,
              )),
          Expanded(
              flex: 7,
              child: Text(
                title,
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Expanded(
              flex: 1,
              child: Image(
                image: AssetImage('assets/$imageName.png'),
                fit: BoxFit.fitHeight,
                height: appHeight * 0.0285,
              )),
        ],
      ),
    ),
  );
}
