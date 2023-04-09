import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/Objects/Product.dart';
import 'package:store2/screens/shared/appBar.dart';

import 'comps/vsProductItem.dart';

class Comparing extends StatelessWidget {
  Widget logo1() {
    return Image(image: AssetImage('assets/logo1.png'), width: appWidth * 0.6);
  }

  Widget img1() {
    return Image(
      image: AssetImage('assets/intro-img1.png'),
    );
  }

  Widget row1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('؟',
            style: TextStyle(
                color: appColor1,
                fontWeight: FontWeight.bold,
                fontSize: appWidth * 0.08)),
        Text('شنو تبي من الصين',
            style: TextStyle(
                color: appColor2,
                fontWeight: FontWeight.bold,
                fontSize: appWidth * 0.08))
      ],
    );
  }

  Widget text1() {
    return Text('أمر وتدلل..',
        textDirection: TextDirection.rtl,
        style: TextStyle(
            color: appColor1,
            fontWeight: FontWeight.bold,
            fontSize: appWidth * 0.08));
  }

  Widget text2() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
          'نوفر لك كل شي تبيه من الصين إلى الكويت \n بجودة عالية وأسعار خيالية',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: appColor2,
              fontWeight: FontWeight.bold,
              fontSize: appWidth * 0.035)),
    );
  }

  Widget img2() {
    return Image(
      image: AssetImage('assets/bottom1.png'),
      fit: BoxFit.fitWidth,
      width: appWidth,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor1,
      appBar: myAppBar(
        showShare: true,
        showBack: true,
        title: 'مقارنة',
      ),
      body: Stack(children: [
        Column(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(
                    appWidth * 0.03,
                  ),
                  child: vsProductItem(),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(
                    appWidth * 0.03,
                  ),
                  child: vsProductItem(),
                )),
          ],
        ),
        Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: appWidth * 0.075,
              child: CircleAvatar(
                  radius: appWidth * 0.06,
                  child: Text(
                    'VS',
                    style: TextStyle(color: Colors.white,fontSize: appWidth * 0.05),
                  ),
                  backgroundColor: Colors.black),
            ))
      ]),
    );
  }
}
