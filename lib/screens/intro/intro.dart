import 'package:flutter/material.dart';
import 'package:store2/constants.dart';

class Intro extends StatelessWidget {
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
      body: Container(
        height: appHeight,
        width: appWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg1.png'),
              fit: BoxFit.fill), //T,sample => bg1
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: logo1(),
            ),
            Expanded(
              flex: 2,
              child: row1(),
            ),
            Expanded(
              flex: 6,
              child: img1(),
            ),
            Expanded(
              flex: 1,
              child: text1(),
            ),
            Expanded(
              flex: 2,
              child: text2(),
            ),
            Expanded(
              flex: 2,
              child: img2(),
            ),
          ],
        ),
      ),
    );
  }
}
