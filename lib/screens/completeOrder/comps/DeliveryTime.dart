import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

DeliveryTime() {
  return Column(
    children: [
      Expanded(flex: 1,child: Container()),
      Expanded(
        flex: 5,
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            '     وقت التوصيل',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: TextStyle(
                fontSize: appWidth * 0.035, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      Expanded(
        flex: 8,
        child: Container(
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
          ),
          width: appWidth * 0.95,
          child: Text(
            'شهرين إلى ثلاثة أشهر من تاريخ الطلب   ',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: appWidth * 0.035,
                color: appColor4,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ],
  );
}