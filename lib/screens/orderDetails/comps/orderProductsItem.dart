import 'package:flutter/material.dart';
import 'package:store2/screens/cart/components/sizesAndColors.dart';
import 'package:store2/screens/orderDetails/comps/orderStatusCompHor.dart';
import 'package:store2/screens/shared/Objects/CartItem.dart';
import 'package:store2/screens/shared/enums.dart';

import '../../../constants.dart';

orderProductItem(CartItem item,
    {bool showStatusBadge = false, showShippingDetails = false}) {
  if (item == null) item = CartItem.Default();

  return Container(
    padding: EdgeInsets.all(appHeight*0.006),
    child: Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                      flex: 12,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Align(
                                  alignment: Alignment.bottomRight, child: null)),
                          Expanded(
                              flex: 2,
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: titleTxt(item))),
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Expanded(flex: 2, child: Container()),
                                  Expanded(
                                      flex: 1,
                                      child: txtItem(
                                          'الكمية: ' + item.quantity.toString(),
                                          color: darkGrey)),
                                  Expanded(
                                      flex: 1,
                                      child: txtItem(item.product.currentPrice)),
                                ],
                              )),
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Expanded(flex: 1, child: Container()),
                                  Expanded(
                                      flex: 4,
                                      child: Row(
                                        children: [
                                          Expanded(flex: 1, child: Container()),
                                          Expanded(
                                              flex: 3,
                                              child: showStatusBadge
                                                  ? statusIcon()
                                                  : Container()),
                                          Expanded(
                                              flex: 6,
                                              child: colorsAndSizes(
                                                  item.sizes, item.colors)),
                                        ],
                                      )),
                                  Expanded(flex: 1, child: Container()),
                                ],
                              )),
                        ],
                      )),
                  Expanded(flex: 4, child: productImg()),
                ],
              )),
          Expanded(
              flex: showShippingDetails ? 2 : 0,
              child: showShippingDetails ? OrderStatusCompHor() : Container()),
        ],
      ),
    ),
  );
}

titleTxt(CartItem item) {
  return Text(item.product.title,
      textAlign: TextAlign.right,
      style:
          TextStyle(fontWeight: FontWeight.w800, fontSize: appWidth * 0.025));
}

productImg() {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Expanded(flex: 1, child: Container()),
    Expanded(
      flex: 7,
      child: Image(
        image: AssetImage('assets/favProductSample.png'),
      ),
    ),
    Expanded(flex: 2, child: Container()),
  ]);
}

txtItem(String title, {Color color = Colors.red}) {
  return Align(
    alignment: Alignment.topRight,
    child: Text(
      title,
      textAlign: TextAlign.right,
      style: TextStyle(
          color: color, fontWeight: FontWeight.w900, fontSize: appWidth * 0.03),
    ),
  );
}

statusIcon(
    {Color color = offWhite2,
    String text = 'جاري التحضير',
    Color textColor = Colors.black}) {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: textColor,
          fontSize: appWidth * 0.0255),
    ),
    decoration: BoxDecoration(
        color: offWhite2,
        borderRadius: BorderRadius.all(Radius.circular(appWidth * 0.1))),
  );
}
