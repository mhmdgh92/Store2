import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';

class DeliveryMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'اتمام الطلب'),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'اختر طريقة الأستلام المفضلة لديك',
                  style: TextStyle(
                      fontSize: appWidth*0.0395,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
              )),
          Expanded(
              flex: 6,
              child: method(
                image: 'assets/wareHouseIcon.png',
                title: 'الاستلام من المستودع',
                shipping: 'مجاني',
              )),
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 6,
              child: method(
                image: 'assets/deliveryTruck.png',
                title: 'التوصيل للمنزل',
                shipping: 'رسوم اضافية',
              )),
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 3,
              child: Image(
                width: appWidth,
                image: AssetImage('assets/bottom1.png'),
                fit: BoxFit.fill,
              )),
        ],
      ),
    );
  }

  method(
      {required String image,
      required String title,
      required String shipping}) {
    return Row(
      children: [
        Expanded(flex: 4, child: Container()),
        Expanded(
            flex: 5,
            child: Column(
              children: [
                Expanded(
                    flex: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: appColor1,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                            width: appWidth * 0.22, image: AssetImage(image)),
                      ),
                    )),
                Expanded(flex: 1, child: Container()),
                Expanded(
                    flex: 2,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Expanded(
                    flex: 2,
                    child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: '( ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        TextSpan(
                            text: shipping,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                        TextSpan(
                            text: ' )',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ]),
                    )),
              ],
            )),
        Expanded(flex: 4, child: Container()),
      ],
    );
  }
}
