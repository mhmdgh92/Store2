import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appAttach.dart';
import 'package:store2/screens/shared/appDiscountInput.dart';
import 'package:store2/screens/shared/appRadioBTN.dart';

import '../../../constants.dart';

DiscountCode() {
  return Column(
    children: [
      Expanded(
        flex: 1,
        child: Align(
          alignment: Alignment.topRight,
          child: Text(
            '     لديك كود خصم؟',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: TextStyle(
                fontSize: appWidth * 0.0375,
                color: appColor1,
                fontWeight: FontWeight.w800),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: appDiscountInput(
            width: 0.85, onChange: () {}, title: 'ادخل كود الخصم'),
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
              style: TextStyle(
                  fontSize: appWidth * 0.022,
                  color: appColor4,
                  fontWeight: FontWeight.bold),
            )),
        Expanded(
            flex: 10,
            child: Text(
              title,
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: appWidth * 0.03, fontWeight: FontWeight.bold),
            )),
      ],
    ),
  );
}
