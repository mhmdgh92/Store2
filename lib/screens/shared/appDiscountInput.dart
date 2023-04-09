import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../constants.dart';
import 'appTextInput.dart';

class appDiscountInput extends StatelessWidget {
  final double padding;
  final double height;
  final double width;
  final Function onChange;
  final String title;
  final Color arrowIconColor;

  appDiscountInput(
      {this.padding = 4.5,
      this.height = 0.065,
      this.width = 0.77,
      required this.onChange,
      required this.title,
      this.arrowIconColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: SizedBox(
        height: appHeight * height,
        width: appWidth * width,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: appBorderColor, width: 0.22),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                        flex: 5,
                        child: Container(
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: appColor1,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'استخدم الكود',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 0.0245 * appWidth,
                                  color: Colors.white),
                            ),
                          ),
                        )),
                    Expanded(flex: 1, child: Container()),
                  ],
                ),
              ),
              Expanded(
                flex: 23,
                child: Row(
                  children: [
                    Expanded(
                      flex: 19,
                      child: appInputFeild(bordercolor: Colors.transparent,showIcon: false,hintTxt: title),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
