import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/screens/orderDetails/comps/orderProductsItem.dart';
import 'package:store2/screens/shared/Objects/CartItem.dart';

import '../../../constants.dart';

orderProducts(){
  return Column(
    children: [
      Expanded(flex: 1,child: Container()),
      Expanded(
        flex: 15,
        child: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.only(right: appWidth*0.02,left: appWidth*0.02),
              sliver: SliverGrid.count(
                childAspectRatio: appRatio * 1.9,
                crossAxisSpacing: appWidth * 0.035,
                mainAxisSpacing: appHeight * 0.02,
                crossAxisCount: 1,
                children: [
                  orderProductItem(CartItem.Default()),
                  orderProductItem(CartItem.Default()),
                  orderProductItem(CartItem.Default()),
                  orderProductItem(CartItem.Default()),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}