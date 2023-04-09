import 'package:flutter/material.dart';
import 'package:store2/model/Objects/myuser.dart';

class AuthService {

  late MyUser currentUser;

  //Create user obj based
  MyUser? userFromJson(String userJson) {
    print(userJson);
    return MyUser.Default();
  }

  MyUser? GetUser(){
    return currentUser;
  }

// Sign in with email & password
  Future<bool> SignInWithEmailAndPassword(String email, String password) async {
    try {
      // await _auth.signInWithEmailAndPassword(email: email, password: password);
      print(email+"||"+password);
      // print('Success');
      return true;
    } catch (e) {
      print('Failure' + e.toString());
      return false;
    }
  }
}
