import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:store2/screens/shared/appCountryPickerIcon.dart';
import 'package:store2/screens/shared/appPicker.dart';
import 'package:store2/screens/shared/iconWithBorder.dart';

import '../../../constants.dart';

addressItem() {
  return Container(
    padding: EdgeInsets.all(appWidth * 0.015),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: appBorderColor, width: 0.8)),
    child: Align(
        alignment: Alignment.center,
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Align(
                              alignment: Alignment.center,
                              child: appPicker(
                                  iconBackGroundColor: Colors.transparent,
                                  arrowIconColor: Colors.transparent,
                                  iconFlex: 2,
                                  onChange: () {},
                                  icon: Entypo.dots_three_vertical,
                                  iconSize: 0.018,
                                  iconColor: appColor1,
                                  backGroundColor: Color(0xFFF5F5F5),
                                  data: '',
                                  textSize: 0.03,
                                  txtColor: appColor1,
                                  title: 'اختر اجراء'))),
                      Expanded(flex: 5, child: Container()),
                    ],
                  )),
              Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Item(Colors.red, Icons.person, 'محمود خلة'),
                      Item(Colors.red, Icons.phone_android, '009650000000000'),
                      Item(Colors.red, Icons.email_outlined,
                          'eng-mahmoud@gmail.com'),
                      Item(Colors.red, Icons.location_pin, 'الدولة: الكويت'),
                      minItem('المنطقة: محافظة حولي'),
                      minItem('القطعة: اسم القطعة'),
                      minItem('الشارع: اسم الشارع'),
                      minItem('الجادة: اسم الجادة'),
                    ],
                  )),
            ],
          ),
        )),
  );
}

Item(Color color, IconData icon, String text) {
  return Expanded(
      flex: 3,
      child: Row(
        children: [
          Expanded(
              flex: 10,
              child: Text(
                text,
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: appWidth * 0.0275),
              )),
          Expanded(flex: 2, child: IconWithBorder(icon: icon)),
        ],
      ));
}

minItem(String text) {
  return Expanded(
      flex: 2,
      child: Row(
        children: [
          Expanded(
              flex: 10,
              child: Text(
                text,
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: appWidth * 0.0275),
              )),
          Expanded(flex: 2, child: Container()),
        ],
      ));
}
