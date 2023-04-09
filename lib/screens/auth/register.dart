import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/appInputFeildWithScrollMenu.dart';
import 'package:store2/screens/shared/appTextInput.dart';

import '../../userData.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {

    @override
    void initState() {
      super.initState();
    }

    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: img1(),
          ),
          Expanded(
            flex: 1,
            child: txt1(),
          ),
          Expanded(
            flex: 1,
            child: txt2(),
          ),
          Expanded(
            flex: 1,
            child: inpt1(),
          ),
          Expanded(
            flex: 1,
            child: inpt2(),
          ),
          Expanded(
            flex: 1,
            child: inpt3(),
          ),
          Expanded(
            flex: 1,
            child: inpt4(),
          ),
          Expanded(
            flex: 1,
            child: row1(),
          ),
          Expanded(flex: 1, child: inpt5()),
          Expanded(
            flex: 1,
            child: row2(),
          ),
          Expanded(
            flex: 2,
            child: img2(),
          ),
        ],
      ),
    );
  }

  img1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex: 6, child: Container()),
        Expanded(
          flex: 7,
          child: Image(image: AssetImage('assets/logo1.png')),
        ),
        Expanded(flex: 1, child: Container()),
      ],
    );
  }

  txt1() {
    return Text('مستخدم جديد',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: appColor2,
            fontWeight: FontWeight.bold,
            fontSize: appWidth * 0.065));
  }

  txt2() {
    return Text('التسجيل',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: appWidth * 0.035));
  }

  inpt1() {
    return appInputFeild(hintTxt: 'البريد الالكتروني', icon: Icons.mail);
  }

  inpt2() {
    return appInputFeildWithScrollMenu(hintTxt: 'رقم الموبايل');
  }

  inpt3() {
    return appInputFeild(
        hintTxt: 'كلمة المرور', icon: Icons.lock, SecuredTxt: true);
  }

  inpt4() {
    return appInputFeild(
        hintTxt: 'تأكيد كلمة المرور', icon: Icons.lock, SecuredTxt: true);
  }

  row1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("أوافق على شروط الاستخدام وسياسة الخصوصية",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: appWidth * 0.035, color: appColor4)),
        Checkbox(
          checkColor: Colors.white,
          value: false,
          onChanged: (bool? value) {},
        ),
      ],
    );
  }

  inpt5() {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: appElevatedButton(
                text: 'تسجيل', color: appColor1, onPress: () {})),
      ],
    );
  }

  row2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Text("تسجيل دخول",
              style: TextStyle(
                  color: appColor1,
                  fontSize: appWidth * 0.035,
                  fontWeight: FontWeight.bold)),
          onTap: () => Navigator.pop(context),
        ),
        Text("  لديك حساب حالي؟",
            style: TextStyle(fontSize: appWidth * 0.035, color: appColor4)),
      ],
    );
  }

  img2() {
    return Column(
      children: [
        Expanded(flex: 2, child: Container()),
        Expanded(
            flex: 9,
            child: Image.asset("assets/bottom1.png",
                fit: BoxFit.fitWidth, width: appWidth))
      ],
    );
  }
}
