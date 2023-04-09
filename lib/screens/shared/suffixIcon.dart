import 'package:flutter/material.dart';

import '../../constants.dart';

suffixIcon(
    {IconData icon = Icons.person,
    double iconSize = 14,
    Color iconColor = Colors.white,
    Color iconBackGroundColor = Colors.black}) {
  return Align(
    widthFactor: 0,
    child: CircleAvatar(
      backgroundColor: iconBackGroundColor,
      radius: appHeight * 0.0225,
      child: Icon(
        icon,
        size: iconSize * appHeight,
        color: iconColor,
      ),
    ),
  );
}
