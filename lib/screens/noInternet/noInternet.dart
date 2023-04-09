import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';

import '../../constants.dart';

class NoInernet extends StatelessWidget {

  Widget logo1() {
    return Image(
      image: AssetImage('assets/logo1.png'),
      fit: BoxFit.fitWidth,
      width: appWidth * 0.6,
    );
  }

  Widget text1() {
    return Text('تعذر الإتصال بالانترنت',
        style: TextStyle(
            color: appColor2,
            fontWeight: FontWeight.bold,
            fontSize: appWidth*0.065));
  }

  Widget text2() {
    return Text(
        'تعذر الإتصال بشبكة الانترنت لديك رجاءاً تأكد \n من وجود خدمة الإنترنت من ثم قم بتحديث الصفحة',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: appWidth*0.035));
  }

  Widget img1() {
    return Image(
      image: AssetImage('assets/nointernet.png'),
      width: appWidth*0.925,
    );
  }

  Widget btn1() {
    return appElevatedButton(
      height:  0.1,
      width: 0.75,
      fontSize: 0.05,
      text: 'تحديث',
      color: appColor1,
      onPress: () {},
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
    return Material(
      child: Column(
        children: <Widget>[
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 4, child: logo1()),
          Expanded(flex: 2, child: text1()),
          Expanded(flex: 2, child: text2()),
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 7, child: img1()),
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 2, child: btn1()),
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 3, child: img2()),
        ],
      ),
    );
  }
}
