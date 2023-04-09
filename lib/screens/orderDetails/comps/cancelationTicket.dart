import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/appRadioBTN.dart';

import '../../../constants.dart';

cancelationTicket() {
  return Container(
    color: (Colors.black.withOpacity(0.5)),
    child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: offWhite2,
          height: appHeight * 0.45,
          width: appWidth,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: appWidth * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.close_rounded,
                          color: Colors.grey,
                          size: appWidth * 0.05,
                        ),
                        Text("ما هو سبب الإلغاء",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: appWidth * 0.04)),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Row(
                  children: [
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                        flex: 18,
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              radioBTNItem('تأخر الطلب', true),
                              radioBTNItem('خطأ في الطلب', false),
                              radioBTNItemWithSubTitle(
                                'أريد إعادة الطلب',
                                false,
                              ),
                              radioBTNItem('أخرى', false),
                            ],
                          ),
                        )),
                    Expanded(flex: 1, child: Container()),
                  ],
                ),
              ),
              Expanded(flex: 4, child: Column(
                children: [
                  Expanded(flex: 1,child: Container()),
                  Expanded(flex: 6,child: appElevatedButton(width: 0.9,fontSize: 0.035,text: 'تأكيد', onPress: (){})),
                  Expanded(flex: 1,child: Container()),
                ],
              )),
            ],
          ),
        )),
  );
}

specificTxt() {
  return RichText(
    text: TextSpan(
      text: "متاح لك إعادة الطلب مدة ",
      style: TextStyle(color: Colors.grey, fontSize: appWidth*0.02),
      children: <TextSpan>[
        TextSpan(text: ' 3 أيام ', style: TextStyle(color: appColor1,fontSize: appWidth*0.02)),
        TextSpan(text: 'من تاريخ ووقت الطلب', style: TextStyle(color: Colors.grey,fontSize: appWidth*0.02)),
      ],
    ),
  );
}

radioBTNItem(String title, bool checked) {
  return Expanded(
      flex: 1,
      child: Container(
        decoration:
            BoxDecoration(border: Border(bottom: BorderSide(color: offWhite2))),
        child: Row(
          children: [
            Expanded(
                flex: 7,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          title,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontWeight:
                                  checked ? FontWeight.w900 : FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(flex: 1, child: appRadioBTN(checked, size: 0.055)),
          ],
        ),
      ));
}

radioBTNItemWithSubTitle(String title, bool checked) {
  return Expanded(
      flex: 1,
      child: Container(
        decoration:
            BoxDecoration(border: Border(bottom: BorderSide(color: offWhite2))),
        child: Row(
          children: [
            Expanded(
                flex: 7,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          title,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontWeight:
                                  checked ? FontWeight.w900 : FontWeight.w300),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: specificTxt(),
                      ),
                    ),
                  ],
                )),
            Expanded(flex: 1, child: appRadioBTN(checked, size: 0.055)),
          ],
        ),
      ));
}
