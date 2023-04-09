import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:store2/screens/productDetails/comps/productTimer.dart';
import 'package:store2/screens/shared/Objects/Product.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/appRatingStars.dart';
import 'package:store2/screens/shared/appSizedBox.dart';

import '../../../constants.dart';

ProductItem({Product? product, bool showTimer = true}) {
  if (product == null) product = Product.Default();

  return Container(
    color: Colors.white,
    child: Column(
      children: [
        Expanded(
            flex: 8,
            child: Stack(children: <Widget>[
              Image(
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/product1.png')),
              Center(
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(children: [
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: appColor1,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(2.5)),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'جديد',
                                          style: TextStyle(
                                              fontSize: appWidth * 0.0275,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Text(
                                      'متبقي للخصم',
                                      textAlign: TextAlign.right,
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                          fontSize: appWidth * 0.025,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: showTimer?Row(
                                children: [
                                  Expanded(flex: 1, child: Container()),
                                  Expanded(
                                    flex: 1,
                                    child: productTimer(),
                                  ),
                                ],
                              ):Container()),
                        ])),
                    Expanded(flex: 5, child: Container()),
                  ],
                ),
              )
            ])),
        Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'متبقي للخصم',
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style:
                    TextStyle(fontSize: appWidth * 0.025, color: Colors.grey),
              ),
            )),
        Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'طقم أواني طهي من الألومنيوم بطبقة مانعة للالتصاق',
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: appWidth * 0.025),
              ),
            )),
        Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.center,
              child: appRatingStars(),
            )),
        Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.favorite_border,
                        color: appColor1,
                        size: appWidth * 0.05,
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          '550د.ك',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: appWidth * 0.0225,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '499 د.ك',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: appColor1,
                            fontSize: appWidth * 0.0315,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        Expanded(
            flex: 2,
            child: appElevatedButton(
                fontSize: 0.0255,
                borderRadius: 5,
                color: product.inCart ? Color(0xFFF07263) : Colors.transparent,
                textColor: appColor1,
                text: 'اضف الى عربة التسوق',
                onPress: () {})),
      ],
    ),
  );
}


