import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appRadioBTN.dart';

import '../../../constants.dart';

PaymentMethod() {
  return Column(
    children: [
      Expanded(
        flex: 3,
        child: Align(
          alignment: Alignment.topRight,
          child: Text(
            '     الدفع',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: TextStyle(
                fontSize: appWidth * 0.035, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      Expanded(
        flex: 6,
        child: method('KNET', 'الدفع عن طريق خدمة كي نت', 'Knet', true),
      ),
      Expanded(
        flex: 6,
        child: method('البطاقة الإتمانية', 'الدفع عن طريق فيزا ومستر كارد',
            'visa', false),
      ),
    ],
  );
}

method(String title, String subTitle, String img, bool checked) {
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: Container(
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
              child: Image(
                image: AssetImage('assets/$img.png'),
                height: appHeight * 0.03,
              )),
          Expanded(
              flex: 4,
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          title,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: appWidth * 0.03,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          subTitle,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: appWidth * 0.02,
                              color: appColor4,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              )),
          Expanded(flex: 1, child: appRadioBTN(checked)),
        ],
      ),
    ),
  );
}
