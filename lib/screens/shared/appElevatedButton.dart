import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appLoading.dart';

import '../../constants.dart';

class appElevatedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPress;
  final double height;
  final double width;
  final double fontSize;
  final double borderRadius;
  final Color textColor;
  final Color borderColor;
  final double padding;
  final bool loading;

  const appElevatedButton(
      {Key? key,
      required this.text,
      this.color = appColor1,
      required this.onPress,
      this.height = 0.065,
      this.width = 0.77,
      this.fontSize = 0.035,
      this.borderRadius = 30.0,
      this.textColor = Colors.white,
      this.padding = 7,
      this.borderColor = Colors.red,
      this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(padding),
        child: (height > 0 && width > 0)
            ? SizedBox(
                height: appHeight * height,
                width: appWidth * width,
                child: ElevBTN())
            : ElevBTN());
  }

  ElevBTN() {
    return ElevatedButton(
        onPressed: () => loading ? null : onPress(),
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: appBorderColor),
          elevation: 0,
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: loading
            ? appLoading()
            : Text(
                text,
                style:
                    TextStyle(color: textColor, fontSize: appWidth * fontSize),
              ));
  }
}
