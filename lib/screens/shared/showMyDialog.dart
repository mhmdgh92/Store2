import 'package:flutter/material.dart';

showAlertDialog(BuildContext context,String message) {

  // set up the button
  Widget okButton = TextButton(
    child: Text('حسنا',textDirection: TextDirection.rtl),
    onPressed: () =>Navigator.of(context).pop(),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text('رسالة',textDirection: TextDirection.rtl),
    content: Text(message,textDirection: TextDirection.rtl),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}