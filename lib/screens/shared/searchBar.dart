import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appInputFeildWithScrollMenu.dart';
import 'package:store2/screens/shared/min/minAppTextInput.dart';

import 'appTextInput.dart';

class searchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    barCode() {
      return Container(
          padding: EdgeInsets.all(appWidth * 0.015),
          child: Image(image: AssetImage('assets/barCode.png')));
    }

    searchInput() {
      return appInputFeild(
          borderRadius: 5,
          iconColor: Colors.black,
          icon: Icons.search,
          iconSize: 0.04,
          iconBackGroundColor: Colors.transparent,
          prefixWidget: barCode(),
          hintTxt: 'مالذي تبحث عنه؟');
    }

    return Container(
      color: appColor1,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: Row(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(flex: 11, child: searchInput()),
                Expanded(
                    flex: 2,
                    child: Image(
                        height: appHeight * 0.045,
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/listIcon.png'))),
              ],
            ),
          ),
          Expanded(flex: 2, child: Container()),
        ],
      ),
    );
  }
}
