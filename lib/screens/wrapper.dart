import 'package:flutter/material.dart';
import 'package:store2/screens/auth/login.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if (MyUser.Default())
    return Login();
    // else
    //   return Home();
  }
}