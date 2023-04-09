import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:store2/screens/cart/components/quantityComp.dart';
import 'package:store2/screens/cart/components/sizesAndColors.dart';
import 'package:store2/screens/shared/Objects/CartItem.dart';
import 'package:store2/screens/shared/Objects/Product.dart';
import 'package:store2/screens/shared/appSizedBox.dart';

import '../../../constants.dart';

cartItem(CartItem item) {
  if (item == null) item = CartItem.Default();

  productImg() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(flex: 1, child: Container()),
      Expanded(
        flex: 3,
        child: Image(
          image: AssetImage('assets/favProductSample.png'),
        ),
      ),
      Expanded(flex: 2, child: Container()),
    ]);
  }

  brandTxt() {
    return Text(item.product.brand,
        textAlign: TextAlign.right,
        style: TextStyle(color: appColor4, fontSize: appWidth * 0.03));
  }

  titleTxt() {
    return Text(item.product.title,
        textAlign: TextAlign.right,
        style:
            TextStyle(fontWeight: FontWeight.w900, fontSize: appWidth * 0.03));
  }

  return Container(
    height: appHeight * 0.22,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: appBorderColor, width: 0.8)),
    child: Row(
      children: [
        Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 9,
                  child: Column(
                    children: [
                      Expanded(flex: 1, child: Container()),
                      Expanded(
                          flex: 2,
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(EvilIcons.trash,
                                  size: appWidth * 0.07))),
                      Expanded(flex: 2, child: Container()),
                      Expanded(flex: 2, child: quantityComp()),
                      Expanded(flex: 3, child: Container()),
                    ],
                  ),
                ),
                Expanded(flex: 1, child: Container()),
              ],
            )),
        Expanded(
            flex: 7,
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Align(
                        alignment: Alignment.bottomRight, child: brandTxt())),
                Expanded(
                    flex: 2,
                    child: Align(
                        alignment: Alignment.topRight, child: titleTxt())),
                Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        item.product.currentPrice,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w900,
                            fontSize: appWidth * 0.03),
                      ),
                    )),
                Expanded(
                    flex: 1, child: colorsAndSizes(item.sizes, item.colors)),
                Expanded(flex: 1, child: Container()),
              ],
            )),
        Expanded(flex: 4, child: productImg()),
      ],
    ),
  );
}
