import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/appTextInput.dart';
import 'package:flutter/gestures.dart';

class ForgetPass extends StatefulWidget {


  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(flex: 2, child: Container()),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(flex: 10, child: img1()),
                  Expanded(flex: 1, child: Container())
                ],
              )),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: txt1(),
            ),
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.topCenter,
              child: txt2(),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.center,
              child: inpt1(),
            ),
          ),
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 2,
            child: btn1(),
          ),
          Expanded(flex: 8, child: Container()),
          Expanded(flex: 3, child: img2()),
        ],
      ),
    );
  }

  img1() {
    return Image(
      image: AssetImage('assets/logo1.png'),
    );
  }

  txt1() {
    return Text('نسيت كلمة المرور',
        style: TextStyle(
            color: appColor2, fontWeight: FontWeight.bold, fontSize: 28));
  }

  txt2() {
    return Text('قم بإضافة بريدك الالكتروني لتصلك رسالة بكلمة \nالمرور الجديدة',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15));
  }

  inpt1() {
    return appInputFeild(
      hintTxt: 'البريد الالكتروني',
      icon: Icons.mail,
    );
  }

  btn1() {
    return appElevatedButton(
      text: 'اعادة ارسال',
      color: appColor1,
      onPress: () {},
    );
  }

  img2() {
    return Image(
      image: AssetImage('assets/bottom1.png'),
      fit: BoxFit.fitWidth,
      width: appWidth,
    );
  }

}
