import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store2/api/api_service.dart';
import 'package:store2/constants.dart';
import 'package:store2/model/Api/login_model.dart';
import 'package:store2/screens/auth/register.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/InputValidationMixin.dart';
import 'package:store2/screens/shared/appTextInput.dart';
import 'package:store2/screens/shared/enums.dart';
import 'package:store2/screens/shared/showMyDialog.dart';
import 'package:store2/userData.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formGlobalKey = GlobalKey<FormState>();
  late bool isApiCallProcess = false;
  late LoginRequestModel loginRequestModel;

  @override
  void initState() {
    super.initState();
    loginRequestModel = LoginRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Align(alignment: Alignment.center, child: img1())),
          Expanded(flex: 1, child: txt1()),
          Expanded(flex: 1, child: txt2()),
          Expanded(flex: 2, child: form1()),
          Expanded(
              flex: 1,
              child: Align(alignment: Alignment.topCenter, child: gstDec1())),
          Expanded(flex: 1, child: btn1()),
          Expanded(flex: 1, child: btn2()),
          Expanded(
              flex: 1,
              child: Align(alignment: Alignment.center, child: column1())),
          Expanded(flex: 2, child: img2()),
        ],
      ),
    );
  }

  img1() {
    return Column(
      children: [
        Expanded(flex: 5, child: Container()),
        Expanded(flex: 7, child: Image(image: AssetImage('assets/logo1.png'))),
        Expanded(flex: 2, child: Container()),
      ],
    );
  }

  txt1() {
    return Text('مرحبا بعودتك',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: appColor2,
            fontWeight: FontWeight.bold,
            fontSize: appWidth * 0.075));
  }

  txt2() {
    return Text('تسجيل الدخول',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: appWidth * 0.04));
  }

  inpt1() {
    return appInputFeild(
        hintTxt: 'البريد الالكتروني',
        validator: (email) {
          return Validtion(email!, ValidationType.Email);
        },
        icon: Icons.email,
        onFieldSubmitted: (val) => setState(() {
              loginRequestModel.email = val!;
            }));
  }

  inpt2() {
    return appInputFeild(
        SecuredTxt: true,
        hintTxt: 'كلمة المرور',
        validator: (password) {
          return Validtion(password!, ValidationType.Password);
        },
        icon: Icons.lock,
        onFieldSubmitted: (val) => setState(() {
              loginRequestModel.password = val!;
            }));
  }

  form1() {
    return Form(
      key: formGlobalKey,
      child: Column(
        children: [
          Expanded(flex: 1, child: inpt1()),
          Expanded(flex: 1, child: inpt2()),
        ],
      ),
    );
  }

  gstDec1() {
    return GestureDetector(
      child: Text("هل نسيت كلمة المرور؟", style: TextStyle(color: appColor4)),
      onTap: () => print('here'),
    );
  }

  btn1() {
    return appElevatedButton(
      text: 'تسجيل دخول',
      color: appColor1,
      onPress: () => LoginPost(),
      loading: isApiCallProcess,
    );
  }

  bool validateAndSave() {
    return true;
  }

  btn2() {
    return appElevatedButton(
        text: 'الاستمرار كضيف',
        color: appColor2,
        onPress: () => print('Guest'));
  }

  column1() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        GestureDetector(
          child: Text("تسجيل جديد",
              style: TextStyle(
                  color: appColor1, fontSize: 16, fontWeight: FontWeight.bold)),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Register()),
          ),
        ),
        Text("ليس لديك حساب؟", style: TextStyle(color: appColor4)),
      ]),
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

  setApiCallState(bool state) {
    setState(() {
      isApiCallProcess = state;
    });
  }

  LoginPost() async {
    print(UserPreferences.user?.first_name);
    return;
    if (!formGlobalKey.currentState!.validate()) return;
    setApiCallState(true);
    APIService apiService = APIService();
    try {
      await apiService.login(loginRequestModel).then((value) {
        if (value.status)
          UserPreferences.setUserObj(value.data);
        else
          showAlertDialog(context, value.message);
      });
    } catch (e) {
      showAlertDialog(context, 'حدث خطأ ما, يرجى المحاولة مرة اخرى!');
    }
    setApiCallState(false);
  }
}
