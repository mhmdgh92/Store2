import 'package:flutter/material.dart';
import 'package:store2/screens/shared/suffixIcon.dart';

import '../../constants.dart';

class appInputFeild extends StatelessWidget {
  final String hintTxt;
  final IconData icon;
  final bool SecuredTxt;
  final double padding;
  final double height;
  final double width;
  final Color iconBackGroundColor;
  final Color iconColor;
  final double iconSize;
  final bool showIcon;
  final Color bordercolor;
  final int iconFlex;
  final int inputFlex;
  final double borderRadius;
  final Widget? prefixWidget;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onFieldSubmitted;

  appInputFeild(
      {required this.hintTxt,
      this.icon = Icons.person,
      this.SecuredTxt = false,
      this.padding = 4.5,
      this.height = 0.065,
      this.width = 0.77,
      this.iconBackGroundColor = Colors.black,
      this.iconColor = appColor3,
      this.iconSize = 0.0275,
      this.showIcon = true,
      this.bordercolor = appBorderColor,
      this.iconFlex = 1,
      this.borderRadius = 35,
      this.prefixWidget,
      this.inputFlex = 8,
        this.validator,
        this.onFieldSubmitted
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Container(
        width: width * appWidth,
        height: height * appHeight,
        decoration: BoxDecoration(
            color: Colors.white, //NTBD
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: appBorderColor, width: 0.50)),
        child: Row(
          children: [
            // leftAlign ? Expanded(flex: 1, child: Container()) : Container(),
            prefixWidget == null
                ? Container()
                : Expanded(flex: 2, child: prefixWidget!),
            Expanded(
                flex: inputFlex,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: appInput(),
                )),
            showIcon
                ? Expanded(
                    flex: iconFlex,
                    child: suffixIcon(
                        icon: icon,
                        iconSize: iconSize,
                        iconColor: iconColor,
                        iconBackGroundColor: iconBackGroundColor))
                : Container(),
          ],
        ),
      ),
    );
  }

  appInput() {
    return Padding(
        padding: EdgeInsets.all(padding),
        child: SizedBox(
          height: appHeight * height,
          width: appWidth * width,
          child: TextFormField(
            onFieldSubmitted: (val)=>onFieldSubmitted!(val),
            validator: validator,
            autofocus: false,
            style: TextStyle(fontSize: 0.0185 * appHeight),
            textAlignVertical: TextAlignVertical.bottom,
            textAlign: TextAlign.right,
            obscureText: SecuredTxt,
            decoration: textInputDecoration.copyWith(
              errorStyle: TextStyle(
                height: 0,
                fontSize: 7,
              ),
              focusedBorder: null,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              hintText: hintTxt,

            ),
          ),
        ));
  }
}
