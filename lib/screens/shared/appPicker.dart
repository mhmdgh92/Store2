import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appSizedBox.dart';
import 'package:store2/screens/shared/suffixIcon.dart';
import '../../constants.dart';

class appPicker extends StatelessWidget {
  final String data;
  final double padding;
  final double height;
  final double width;
  final Function onChange;
  final String title;
  final bool showIcon;
  final Color arrowIconColor;
  final Color iconColor;
  final IconData icon;
  final double iconSize;
  final double borderRadius;
  final Color backGroundColor;
  final Color iconBackGroundColor;
  final Color txtColor;
  final double textSize;
  final Color borderColor;
  final int iconFlex;

  appPicker(
      {this.padding = 4.5,
      this.height = 0.065,
      this.width = 0.77,
      required this.onChange,
      required this.data,
      required this.title,
      this.showIcon = true,
      this.arrowIconColor = Colors.grey,
      this.iconColor = Colors.white,
      this.icon = Icons.location_on,
      this.iconSize = 0.025,
      this.borderRadius = 35,
      this.textSize = 0.04,
      this.backGroundColor = Colors.white,
      this.txtColor = Colors.black,
      this.borderColor = appColor1,
      this.iconFlex = 1,
      this.iconBackGroundColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: SizedBox(
        height: appHeight * height,
        width: appWidth * width,
        child: Container(
          decoration: BoxDecoration(
            color: backGroundColor,
            border: Border.all(color: appBorderColor, width: 0.35),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 6,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: arrowIconColor,
                                ),
                              ),
                              Expanded(flex: 11, child: Container()),
                            ],
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              title,
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  color: txtColor,
                                  fontSize: appWidth * textSize),
                            )),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        right: 0,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            alignment: Alignment.centerRight,
                            icon: const Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Colors.transparent,
                              textDirection: TextDirection.rtl,
                            ),
                            items: <String>['city1', 'city2', 'city3', 'City4']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (item) {
                              onChange(item.toString());
                            },
                          ),
                        ),
                      ),
                    ],
                  )),
              !showIcon
                  ? const appSizedBox(space: 4)
                  : Expanded(
                      flex: iconFlex,
                      child: suffixIcon(iconBackGroundColor: iconBackGroundColor,
                          icon: icon, iconSize: iconSize, iconColor: iconColor),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
