import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appPicker.dart';
import 'package:store2/screens/shared/appTextInput.dart';

import '../../../constants.dart';
import 'defaultComp.dart';

AddAddress() {
  addressItem(String key, String value) {
    return Row(
      children: [
        Expanded(
            flex: 7,
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  value,
                  textAlign: TextAlign.center,
                ),
              ),
            )),
        Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  border: Border(left: BorderSide(color: lightGrey, width: 1))),
              height: double.infinity,
              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  key,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: darkGrey),
                ),
              ),
            )),
      ],
    );
  }

  locationTable() {
    return Container(
      color: offWhite,
      child: Column(
        children: [
          Expanded(flex: 1, child: addressItem('الدولة', 'الكويت')),
          Expanded(flex: 1, child: addressItem('المنطقة', 'محافظة حولي')),
          Expanded(flex: 1, child: addressItem('القطعة', '50')),
          Expanded(
              flex: 1, child: addressItem('الشارع', 'شارع الأمير الرئيسي')),
          Expanded(flex: 1, child: addressItem('الجادة', 'جادة الأمير')),
          Expanded(flex: 1, child: addressItem('رقم المبنى', '200')),
          Expanded(flex: 1, child: addressItem('رقم الطابق', '15')),
          Expanded(flex: 1, child: addressItem('رقم الشقة', 'A 350')),
        ],
      ),
    );
  }

  return Column(
    children: [
      Expanded(
        flex: 1,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '     تغيير العنوان',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: appColor1,
                      fontSize: appWidth * 0.0325, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '     عنوان التوصيل',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: appWidth * 0.035, fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 13,
                  child: defaultInput(Icons.phone_android, '009650000000000')),
              Expanded(
                  flex: 13,
                  child: defaultInput(Icons.person_pin_outlined, 'محمود خلة')),
              Expanded(flex: 1, child: Container()),
            ],
          )),
      Expanded(
          flex: 1,
          child: defaultInput(Icons.mail_outline, 'eng-mahmoud@gmail.com')),
      Expanded(flex: 1, child: defaultInput(Icons.location_pin, 'العنوان')),
      Expanded(flex: 6, child: locationTable()),
    ],
  );
}
