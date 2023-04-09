import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appPicker.dart';
import 'package:store2/screens/shared/appTextInput.dart';

import '../../../constants.dart';
import 'defaultComp.dart';

CreditCardDetails() {
  pickDateAndYear() {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 3,
              child: appPicker(
                title: 'السنة',
                data: '',
                borderRadius: 8,
                backGroundColor: appColor6,
                onChange: () {},
                showIcon: false,
              )),
          Expanded(
              flex: 3,
              child: appPicker(
                title: 'الشهر',
                data: '',
                borderRadius: 8,
                backGroundColor: appColor6,
                onChange: () {},
                showIcon: false,
              )),
          Expanded(flex: 2, child: Container()),
          Expanded(
              flex: 3,
              child: Text(
                'تاريخ الانتهاء',
                textAlign: TextAlign.center,
              )),
          Expanded(
              flex: 2,
              child: Icon(
                Icons.calendar_today,
                color: lightGrey,
              )),
        ],
      ),
    );
  }

  return Column(
    children: [
      Expanded(
          flex: 1,
          child: defaultInput(Icons.person_pin_outlined, 'الاسم على البطاقة')),
      Expanded(
          flex: 1,
          child: defaultInput(Icons.dialpad_rounded, 'XXXX XXXX XXXX XXXX')),
      Expanded(flex: 1, child: pickDateAndYear()),
      Expanded(flex: 1, child: defaultInput(Icons.lock, 'CVC')),
    ],
  );
}
