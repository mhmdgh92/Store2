import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/screens/orderDetails/orderDetails.dart';
import 'package:store2/screens/shared/enums.dart';

import '../../../constants.dart';

OrderTab({bool OrderDetailsOrFollow = false}) {
  return SizedBox(
    width: appWidth,
    child: Column(
      children: [
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: tabItem('تفاصيل الطلبية',OrderDetailsOrFollow)),
                Expanded(
                    flex: 1,
                    child: tabItem('تتبع شحن المنتجات',!OrderDetailsOrFollow)),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

tabItem(String text,bool Selected) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            bottom: BorderSide(
                color: Selected?Colors.black:Colors.transparent,
                width: Selected?(appHeight * 0.0055):(0)))),
    child: Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: appWidth * 0.035),
    ),
  );
}
