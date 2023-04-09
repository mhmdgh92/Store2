import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'appTextInput.dart';

class appInputFeildWithScrollMenu extends StatelessWidget {
  final String hintTxt;
  final IconData icon;
  final double padding;
  final double height;
  final double width;
  final bool leftAlign;
  final bool showIcon;
  final double iconSize;

  appInputFeildWithScrollMenu(
      {Key? key,
      required this.hintTxt,
      this.icon = Icons.person,
      this.padding = 4.5,
      this.height = 0.065,
      this.width = 0.77,
      this.leftAlign = false,
      this.showIcon = false,
      this.iconSize = 0.025})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Container(
        width: width * appWidth,
        height: height * appHeight,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            border: Border.all(color: appBorderColor, width: 0.50)),
        child: Row(
          children: [
            !leftAlign
                ? Container()
                : Expanded(flex: 2, child: countryPicker()),
            Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: appInputFeild(
                    padding: 0,
                    height: 0.055,
                    bordercolor: Colors.transparent,
                    hintTxt: hintTxt,
                    showIcon: false,
                  ),
                )),
            leftAlign ? Container() : Expanded(flex: 2, child: countryPicker()),
            Expanded(flex: 1, child: appSuffixIcon()),
          ],
        ),
      ),
    );
  }

  appSuffixIcon() {
    return Align(
      alignment: Alignment.center,
      child: CircleAvatar(
        backgroundColor: Colors.black,
        radius: appHeight * 0.0225,
        child: Icon(Icons.phone_android,
            size: iconSize * appHeight, color: Colors.white),
      ),
    );
  }

  countryPicker() {
    return Row(
      children: [
        leftAlign
            ? Container()
            : Expanded(
                flex: 2,
                child: countrCode(),
              ),
        Expanded(
          flex: 4,
          child: CountryCodePicker(
            onChanged: print,
            initialSelection: 'kw',
            favorite: ['+965', 'kw'],
            flagWidth: 30,
            textStyle: TextStyle(color: Colors.black,fontSize: 15),
            showFlagMain: true,
            showCountryOnly: true,
            hideMainText: !leftAlign,
            alignLeft: true,
            flagDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ],
    );
  }

  countrCode() {
    return Align(
      alignment: Alignment.center,
      child: Text(
        "+123",
        maxLines: 1,
        style: TextStyle(fontSize: appHeight * 0.0185, color: appColor2),
        textAlign: TextAlign.left,
      ),
    );
  }
}
