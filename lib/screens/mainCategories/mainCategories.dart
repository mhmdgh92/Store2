import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appBottomBar.dart';
import 'package:store2/screens/shared/searchBar.dart';

class MainCategories extends StatelessWidget {
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
        selectedIndex: 3,
      ),
      body: Column(
        children: [
          Expanded(flex: 1, child: searchBar()),
          Expanded(
            flex: 8,
            child: Row(
              children: [
                Expanded(
                    flex: 6,
                    child: CustomScrollView(
                      primary: false,
                      slivers: <Widget>[
                        SliverPadding(
                          padding: EdgeInsets.all(appWidth * 0.025),
                          sliver: SliverGrid.count(
                            childAspectRatio: appRatio * 3.4,
                            mainAxisSpacing: appHeight * 0.01,
                            crossAxisCount: 1,
                            children: [
                              catItemTxt('جمــــيـــع المنــــــتــــــــجات',
                                  selected: true),
                              catItemTxt('جمــــيـــع المنــــــتــــــــجات'),
                              catItemTxt('جمــــيـــع المنــــــتــــــــجات'),
                              catItemTxt('جمــــيـــع المنــــــتــــــــجات'),
                              catItemTxt('جمــــيـــع المنــــــتــــــــجات'),
                              catItemTxt('جمــــيـــع المنــــــتــــــــجات'),
                            ],
                          ),
                        ),
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Color(0xFFF5F5F5),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  child: catItem(FontAwesome5Solid.plug,
                                      'الأجهزة الكهربائية'))),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  child: catItem(
                                      MaterialCommunityIcons.toaster_oven,
                                      'المنزل والمطبخ'))),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  child: catItem(MaterialCommunityIcons.sofa,
                                      'الأثاث المنزلي'))),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  child: catItem(
                                      MaterialCommunityIcons.basketball,
                                      'الأجهزة الرياضية',
                                      selected: true))),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  child: catItem(CupertinoIcons.sparkles,
                                      'العناية والجمال'))),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  child: catItem(Icons.electrical_services,
                                      'الإلكترونيات'))),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

catItemTxt(String text, {bool selected = false}) {
  return Container(
    decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        border: Border.all(color: selected?appColor1:Colors.transparent)
    ),
    child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: selected ? appColor1 : Colors.black,
              fontSize: appWidth * 0.04),
        )),
  );
}

catItem(IconData icon, String text, {bool selected = false}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(flex: 1, child: Container()),
      Expanded(
          flex: 2,
          child: Stack(children: [
            Positioned(
                left: 0,
                right: appWidth * 0.015,
                top: 0,
                bottom: 0,
                child: selected
                    ? Image(image: AssetImage('assets/catSelectedCursor.png'))
                    : Container()),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                  child: Icon(
                    icon,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.transparent,
                  radius: appWidth * 0.045),
            )
          ])),
      Expanded(
          flex: 1,
          child: Text(
            text,
            style: TextStyle(
                color: selected ? appColor1 : Color(0xFF848484),
                fontSize: appWidth * 0.025),
          )),
    ],
  );
}
