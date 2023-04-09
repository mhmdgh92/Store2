import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:store2/screens/shared/tabItem.dart';

import '../../../constants.dart';

InquriesItem({bool collapsedItem = true}) {
  return Container(
    color: Colors.white,
    child: Column(
      children: [
        Expanded(
            flex: 1,
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'لديك مشكلة أو استفسار يخص الطلب؟     ',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w900),
                ))),
        Expanded(
            flex: 1,
            child: tabItem(
                title: 'إنشاء تذكرة جديدة',
                prefixIcon: Icons.add_circle_outline)),
        Expanded(
            flex: collapsedItem ? 1 : 5,
            child: collapsedItem
                ? tabItem(
                    title: 'تواصل مع خدمة العملاء',
                    prefixIcon: AntDesign.customerservice)
                : unCollapsedItem()),
        Expanded(
            flex: 1,
            child: tabItem(
                title: 'أرغب بإلغاء الطلب',
                prefixIcon: Icons.cancel_outlined,
                prefixIconColor: appColor1)),
      ],
    ),
  );
}

unCollapsedItem() {
  return Column(children: [
    Expanded(
        flex: 3,
        child: tabItem(
            title: 'تواصل مع خدمة العملاء',
            prefixIcon: AntDesign.customerservice,
            textColor: appColor1,
            suffixIcon: Icons.keyboard_arrow_down_outlined,
            suffixIconColor: appColor1,
            prefixIconColor: appColor1)),
    Expanded(
        flex: 3,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: appWidth * 0.05),
          child: tabItem(
              title: 'الدردشة الحية',
              prefixIcon: AntDesign.customerservice,
              textColor: appColor1,
              suffixIconColor: Colors.transparent,
              prefixIconColor: appColor1),
        )),
    Expanded(
        flex: 3,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: appWidth * 0.05),
          child: tabItem(
              title: 'رقم الجوال',
              additionalTxtFlex:3,
              additionalTitle: '(+00965 69333327)',
              prefixIcon: AntDesign.customerservice,
              suffixIconColor: Colors.transparent,
              prefixIconColor: appColor1),
        )),
    Expanded(
        flex: 3,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: appWidth * 0.05),
          child: tabItem(
              title: 'الايميل',
              additionalTxtFlex:4,
              additionalTitle: '(info@q8store.co)',
              prefixIcon: AntDesign.customerservice,
              suffixIconColor: Colors.transparent,
              prefixIconColor: appColor1),
        )),
    Expanded(flex: 1, child: Container()),
  ]);
}
