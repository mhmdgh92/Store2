import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/orderDetails/comps/orderProductsItem.dart';
import 'package:store2/screens/shared/Objects/CartItem.dart';

class CurrentOrderShippingDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int NuOfItems = 3;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: appWidth * 0.03),
      child: SingleChildScrollView(
        child: SizedBox(
          height: appHeight * NuOfItems * 0.3,
          child: Column(
            children: [
              CollapsedProductItem(false),
              CollapsedProductItem(true),
              CollapsedProductItem(true),
            ],
          ),
        ),
      ),
    );
  }
}

CollapsedProductItem(bool collapsed) {
  return Expanded(
      flex: collapsed ? 1 : 3,
      child: orderProductItem(CartItem.Default(),
          showShippingDetails: !collapsed, showStatusBadge: collapsed));
}
