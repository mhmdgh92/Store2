import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/constants.dart';

import '../../../constants.dart';

OrderSummary({double padding=0.05}) {
  return Column(
    children: [
      Expanded(flex: 1, child: Container()),
      Expanded(
        flex: 2,
        child: Align(
          alignment: Alignment.topRight,
          child: Text(
            '     ملخص الطلب',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: TextStyle(
                fontSize: appWidth * 0.035, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: appWidth * padding),
          child: sum('الإجمالي', '600 د.ك'),
        ),
      ),
      Container(
          height: 0,
          width: appWidth * 0.85,
          child: Divider(
            thickness: 1,
            color: lightGrey,
          )),
      Expanded(
        flex: 4,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: appWidth * padding),
          child: Column(
            children: [
              Expanded(flex: 1, child: sum('توصيل للمنزل', '600 د.ك')),
              Container(
                  height: 0,
                  width: appWidth * 0.85,
                  child: Divider(
                    thickness: 1,
                    color: lightGrey,
                  )),
              Expanded(flex: 1, child: sum('الإجمالي النهائي', '600 د.ك')),
              Expanded(flex: 1, child: sum('السعر شامل إلى مستودع الكويت', '')),
            ],
          ),
        ),
      ),
    ],
  );
}

sum(String title, String result) {
  return Container(
    alignment: Alignment.centerRight,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(6.0)),
    ),
    width: appWidth * 0.9,
    child: Row(
      children: [
        Expanded(
            flex: 2,
            child: Text(
              result,
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  fontSize: appWidth * 0.022, fontWeight: FontWeight.bold),
            )),
        Expanded(
            flex: 10,
            child: Text(
              title,
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: darkGrey,
                  fontSize: appWidth * 0.03,
                  fontWeight: FontWeight.bold),
            )),
      ],
    ),
  );
}
