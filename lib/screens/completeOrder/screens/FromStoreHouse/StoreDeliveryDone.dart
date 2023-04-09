import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/enums.dart';

class StoreDeliveryDone extends StatelessWidget {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 7,
              child: Column(
                children: [
                  Expanded(flex: 1, child: orderNuTxt()),
                  Expanded(flex: 2, child: checkIcon()),
                  Expanded(flex: 1, child: orderConfirmed()),
                  Expanded(flex: 1, child: backToCartBTN()),
                ],
              )),
          Expanded(flex: 4, child: Container()),
        ],
      ),
    );
  }
}
