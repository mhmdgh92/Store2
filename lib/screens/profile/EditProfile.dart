import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/appSizedBox.dart';
import 'package:store2/screens/shared/appTextInput.dart';
import 'package:store2/screens/shared/appInputFeildWithScrollMenu.dart';

class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'معلوماتي'),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: SizedBox(
            height: appHeight*0.9,
            child: Column(
              children: [
                Expanded(flex: 4, child: img1()),
                Expanded(flex: 2, child: inpt1()),
                Expanded(flex: 2, child: inpt2()),
                Expanded(flex: 2, child: inpt1WithScroll()),
                Expanded(flex: 2, child: inpt3()),
                Expanded(flex: 1, child: txt1()),
                Expanded(flex: 2, child: inpt4()),
                Expanded(flex: 2, child: inpt5()),
                Expanded(flex: 2, child: inpt6()),
                Expanded(flex: 4, child: btn1()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  img1() {
    return Column(
      children: [
        Expanded(flex: 1,child: Container()),
        Expanded(flex: 5,child: Image(image: AssetImage('assets/profileIcon.png'))),
        Expanded(flex: 1,child: Container()),
      ],
    );
  }

  inpt1() {
    return appInputFeild(hintTxt: 'الاسم الأول', icon: Icons.person);
  }

  inpt2() {
    return appInputFeild(hintTxt: 'الاسم الثاني', icon: Icons.person);
  }

  inpt1WithScroll() {
    return appInputFeildWithScrollMenu(
        hintTxt: 'رقم الموبايل', icon: Icons.phone_android);
  }

  inpt3() {
    return appInputFeild(hintTxt: 'البريد الالكتروني', icon: Icons.mail);
  }

  txt1() {
    return Align(
      alignment: Alignment.center,
      child: Text('تعديل كلمة المرور',
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold, fontSize: appWidth* 0.025)),
    );
  }

  inpt4() {
    return appInputFeild(hintTxt: 'كلمة المرور', icon: Icons.lock);
  }

  inpt5() {
    return appInputFeild(hintTxt: 'كلمة المرور الجديدة', icon: Icons.lock);
  }

  inpt6() {
    return appInputFeild(
        hintTxt: 'تأكيد كلمة المرور الجديدة', icon: Icons.lock);
  }

  btn1() {
    return Column(
      children: [
        Expanded(flex: 2,child: Container()),
        Expanded(flex: 5,child: appElevatedButton(text: 'حفظ التغييرات', color: appColor1, onPress: () {})),
        Expanded(flex: 2,child: Container()),
      ],
    );
  }
}
