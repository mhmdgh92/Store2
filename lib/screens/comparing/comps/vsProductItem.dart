import 'package:flutter/material.dart';
import 'package:store2/screens/shared/Objects/Product.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/appRatingStars.dart';

import '../../../constants.dart';

vsProductItem() {
  Product product = Product.Default();

  return Container(
    color: Colors.white,
    child: Padding(
      padding: EdgeInsets.all(appWidth * 0.02),
      child: Column(
        children: [
          Expanded(
              flex: 6,
              child: Image(
                  fit: BoxFit.fill, image: AssetImage('assets/product1.png'))),
          Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'اسم المنتج هنا',
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style:
                      TextStyle(fontSize: appWidth * 0.035, color: appColor4),
                ),
              )),
          Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'نص افتراضي حول المنتج المقدم للبيع, كريم اندر جلو يتميز بسهولة الإستخدام العرض بحيص يحتوي علي تركيبة تم اهتيارها بعانية للحفاظ علي لون البشرة ناصعة الجمال و الحيوية من خلال نصوص .نص افتراضي حول المنتج المقدم للبيع, كريم اندر جلو يتميز بسهولة الإستخدام العرض بحيص يحتوي علي ',
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: appWidth * 0.0235, color: darkGrey),
                ),
              )),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: appElevatedButton(
                      height: 0.045,
                        text: 'اضف للعربة', onPress: () {}),
                  ),
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '499 د.ك',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: appColor1,
                          fontSize: appWidth * 0.0515,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    ),
  );
}
