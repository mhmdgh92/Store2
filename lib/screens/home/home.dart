import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appBottomBar.dart';
import 'package:store2/screens/shared/appSizedBox.dart';
import 'package:store2/screens/shared/searchBar.dart';

import 'comps/ListOfProducts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = 3.8;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: myAppBar(
        showLogo: true,
        showBack: false,
      ),
      bottomNavigationBar: appBottomBar(
        selectedIndex: 4,
      ),
      body: Column(
        children: [
          Expanded(flex: 1, child: searchBar()),
          Expanded(
            flex: 8,
            child: SingleChildScrollView(
              child: SizedBox(
                height: appHeight * screenHeight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(flex: 6, child: img1()),
                      Expanded(flex: 4, child: row(img1: '2', img2: '3')),
                      Expanded(flex: 3, child: img('4')),
                      Expanded(flex: 11, child: ListOfProducts()),
                      Expanded(flex: 3, child: img('5')),
                      Expanded(
                          flex: 11,
                          child: ListOfProducts(title: 'الأكثر شهرة')),
                      Expanded(flex: 3, child: img('6')),
                      Expanded(
                          flex: 11, child: ListOfProducts(title: 'المكياج')),
                      Expanded(flex: 3, child: row(img1: '7', img2: '7.1')),
                      Expanded(
                          flex: 11, child: ListOfProducts(title: 'العطور')),
                      Expanded(flex: 3, child: img('8')),
                      Expanded(flex: 3, child: img('9')),
                      Expanded(
                          flex: 11, child: ListOfProducts(title: 'العطور')),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

row({String? img1, String? img2}) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Row(
      children: [
        Expanded(
            flex: 18,
            child: Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/homeimg$img1.png'))),
        Expanded(flex: 1, child: Container()),
        Expanded(
            flex: 18,
            child: Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/homeimg$img2.png'))),
      ],
    ),
  );
}

img(String ImgName) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Image(
        width: double.infinity,
        fit: BoxFit.fill,
        image: AssetImage('assets/homeimg${ImgName}.png')),
  );
}

img1() {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Image(
        width: double.infinity,
        fit: BoxFit.fitWidth,
        image: AssetImage('assets/homeImg1.png')),
  );
}
