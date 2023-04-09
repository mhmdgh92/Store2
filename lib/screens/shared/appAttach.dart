import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../constants.dart';

class appAttach extends StatelessWidget {
  final double padding;
  final double height;
  final double width;
  final Function onChange;
  final String title;
  final Color arrowIconColor;
  final double fontSize;

  appAttach(
      {this.padding = 4.5,
      this.height = 0.065,
      this.width = 0.77,
      required this.onChange,
      required this.title,
        this.fontSize=0.0265,
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
            borderRadius: BorderRadius.circular(35),
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
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'استعراض',
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
                      child: Text(
                        title,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.grey, fontSize: appWidth * fontSize),
                      ),
                    ),
                    Expanded(flex: 1, child: Container()),
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
