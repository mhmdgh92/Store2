import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/completeOrder/comps/DeliveryTime.dart';
import 'package:store2/screens/completeOrder/comps/DiscountCode.dart';
import 'package:store2/screens/completeOrder/comps/OrderSummary.dart';
import 'package:store2/screens/completeOrder/comps/PaymentMethod.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/enums.dart';

import '../../comps/orderStatusComp.dart';

class StoreDeliveryBilling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    orderNuTxt() {
      return Align(
        alignment: Alignment.center,
        child: Text(
          'رقم الطلب: 4442513',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: appWidth * 0.0475, fontWeight: FontWeight.w900),
        ),
      );
    }

    checkIcon() {
      return Icon(Icons.check_circle_outline_sharp,
          size: appWidth * 0.225, color: Color(0xFF59BA4F));
    }

    orderConfirmed() {
      return Align(
        alignment: Alignment.center,
        child: Text(
          'تم تأكيد طلبك',
          textAlign: TextAlign.center,
          style:
              TextStyle(fontSize: appWidth * 0.05, fontWeight: FontWeight.w700),
        ),
      );
    }

    backToCartBTN() {
      return appElevatedButton(text: 'العودة لعربة التسوق', onPress: () {});
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: appHeight*0.775,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(flex: 5, child: DeliveryTime()),
                      Expanded(flex: 1,child: Container()),
                      Expanded(
                          flex: 9,
                          child: PaymentMethod()),
                      Expanded(flex: 1,child: Container()),
                      Expanded(
                          flex: 7,
                          child: OrderSummary()),
                      Expanded(flex: 1,child: Container()),
                      Expanded(
                          flex: 5,
                          child: DiscountCode()),
                      Expanded(flex: 1,child: Container()),
                      Expanded(
                          flex: 4,
                          child: appElevatedButton(width: 0.85,text: 'إتمام الطلب', onPress: (){})),
                      Expanded(flex: 1,child: Container())
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
