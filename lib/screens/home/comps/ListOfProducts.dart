import 'package:flutter/material.dart';
import 'package:store2/screens/brands/components/ProductItem.dart';
import 'package:store2/screens/shared/Objects/Product.dart';
import 'package:store2/screens/shared/appSizedBox.dart';
import 'dart:math' as math;
import '../../../constants.dart';

ListOfProducts({String title = 'الاكثر مبيعا' ,bool showAll = true}) {
  return Column(
    children: [
      Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: showAll? Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: Icon(
                                Icons.double_arrow_outlined,
                                color: appColor1,
                                size: appWidth * 0.035,
                              ))),
                      Expanded(
                        flex: 4,
                        child:  Text(
                                '  عرض الكل',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: appColor1,
                                    fontSize: appWidth * 0.025,
                                    fontWeight: FontWeight.w700),
                              )
                            ,
                      ),
                      Expanded(flex: 2, child: Container()),
                    ],
                  ):Container()),
              Expanded(
                  flex: 1,
                  child: Text(
                    ' ' + title,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: appWidth * 0.0375,
                        fontWeight: FontWeight.w900),
                  ))
            ],
          )),
      Expanded(
          flex: 9,
          child: CustomScrollView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(3),
                sliver: SliverGrid.count(
                  childAspectRatio: appRatio * 0.9,
                  mainAxisSpacing: appHeight * 0.02,
                  crossAxisCount: 1,
                  children: [
                    ProductItem(),
                    ProductItem(),
                    ProductItem(),
                    ProductItem(),
                  ],
                ),
              ),
            ],
          )),
    ],
  );
}
