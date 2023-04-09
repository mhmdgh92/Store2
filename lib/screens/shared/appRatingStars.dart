import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constants.dart';

appRatingStars(
    {double itemSize = 0.037, Color glowColor = const Color(0xFFFEC506)}) {
  return Align(
    alignment: Alignment.centerRight,
    child: RatingBar.builder(
      initialRating: 4,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      ignoreGestures: true,
      itemSize: itemSize * appWidth,
      itemPadding: EdgeInsets.symmetric(horizontal: appWidth * 0.001),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: glowColor,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    ),
  );
}
