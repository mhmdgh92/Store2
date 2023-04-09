import 'package:flutter/material.dart';
import 'dart:ui';

//==============
const appFont1 = 'TheSans';
//==============
//Colors
const appColor1 = Color(0xFFED1B35);
const appColor2 = Color(0xFF000000);
const appColor3 = Color(0xFFFFFFFF);
const appColor4 = Color(0xFF5D5E62);
const appColor5 = Color(0xFFFAFAFA);
const appColor6 = Color(0xFFECECEC);
const appBorderColor = Color(0xFFE0E0E0);
const appCompleted = Color(0xFF44A33E);
const lightGreen = Color(0xFF5FEC56);
const appWaiting = Color(0xFF696969);
const appCanceled = Color(0xFFEE6376);
const darkGrey = Color(0xFFADADAE);
const lightGrey = Color(0xFFD9D9D9);
const offWhite = Color(0xFFFCFCFC);
const offWhite2 = Color(0xFFF3F3F3);
//==============
//Screen Size
var pixelRatio = window.devicePixelRatio;

//Size in physical pixels
var physicalScreenSize = window.physicalSize;
var physicalWidth = physicalScreenSize.width;
var physicalHeight = physicalScreenSize.height;

//Size in logical pixels
var logicalScreenSize = window.physicalSize / pixelRatio;
var appWidth = logicalScreenSize.width;
var appHeight = logicalScreenSize.height;
var appRatio = appHeight/appWidth;

//Padding in physical pixels
var padding = window.padding;

//Safe area paddings in logical pixels
var paddingLeft = window.padding.left / window.devicePixelRatio;
var paddingRight = window.padding.right / window.devicePixelRatio;
var paddingTop = window.padding.top / window.devicePixelRatio;
var paddingBottom = window.padding.bottom / window.devicePixelRatio;

//Safe area in logical pixels
var safeWidth = appWidth - paddingLeft - paddingRight;
var safeHeight = appHeight - paddingTop - paddingBottom;

//==============
//Text InputDecoration

const textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  hintTextDirection: TextDirection.rtl,
  filled: true,
  enabledBorder: EnabledInputBorder,
);

const EnabledInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(35.0)),
  borderSide: BorderSide(color: appBorderColor, width: 0.70),
);

const FocusedInputBorder = OutlineInputBorder(
    borderRadius: const BorderRadius.all(
      Radius.circular(35.0),
    ),
    borderSide: BorderSide(color: Colors.pink));

//==============
//Country Flag From Txt

String GetFlag(String countryCode) {
  return countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
}

//===============
//Mock JSON Data
const JsonData =
    '{ "name": "Pizza da Mario", "cuisine": "Italian", "reviews": [{"score": 4.5,"review": "The pizza was amazing!"},{"score": 5.0,"review": "Very friendly staff, excellent service!"}]}';
//===============
