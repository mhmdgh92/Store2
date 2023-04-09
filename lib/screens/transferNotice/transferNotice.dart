import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appAttach.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/appInputFeildWithScrollMenu.dart';
import 'package:store2/screens/shared/appPicker.dart';
import 'package:store2/screens/shared/appSizedBox.dart';
import 'package:store2/screens/shared/appTextInput.dart';

class TransferNotice extends StatefulWidget {
  const TransferNotice({Key? key}) : super(key: key);

  @override
  State<TransferNotice> createState() => _TransferNoticeState();
}

class _TransferNoticeState extends State<TransferNotice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'نموذج إشعار تحويل'),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Expanded(flex: 3, child: img1()),
            Expanded(
              flex: 12,
              child: Column(
                children: [
                  Expanded(flex: 1, child: inpt1()),
                  Expanded(flex: 1, child: inpt2()),
                  Expanded(flex: 1, child: picker1()),
                  Expanded(flex: 1, child: inpt3()),
                  Expanded(flex: 1, child: inpt4()),
                  Expanded(flex: 1, child: appAttach1()),
                  Expanded(flex: 2, child: btn1()),
                  Expanded(flex: 2, child: img2())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  inpt1() {
    return appInputFeild(
      hintTxt: 'اسم المحول',
      showIcon: false,
      height: 0.06,
    );
  }

  inpt2() {
    return appInputFeild(
      hintTxt: 'رقم الطلب',
      showIcon: false,
      height: 0.06,
    );
  }

  picker1() {
    return appPicker(
      title: 'البنك',
      data: '',
      onChange: () {},
      arrowIconColor: appColor1,
      showIcon: false,
    );
  }

  inpt3() {
    return appInputFeild(
      hintTxt: 'رقم الحساب المحول منه',
      showIcon: false,
      height: 0.06,
    );
  }

  inpt4() {
    return appInputFeild(
      hintTxt: 'المبلغ',
      showIcon: false,
      height: 0.06,
    );
  }

  appAttach1() {
    return appAttach(onChange: () {},  title: 'اضافة مرفق');
  }

  btn1() {
    return Column(
      children: [
        Expanded(flex: 1, child: Container()),
        appElevatedButton(text: 'تقديم', onPress: () {}),
        Expanded(flex: 1, child: Container()),
      ],
    );
  }

  img2() {
    return Image(
      image: AssetImage('assets/bottom1.png'),
      width: appWidth,
      fit: BoxFit.fitWidth,
    );
  }

  img1() {
    return Column(
      children: [
        Expanded(flex: 1, child: Container()),
        Expanded(
          flex: 9,
          child: Image(image: AssetImage('assets/bankCard.png')),
        ),
        Expanded(flex: 1, child: Container())
      ],
    );
  }
}
