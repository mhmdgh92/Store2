import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appBottomBar.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';

import 'components/addressItem.dart';

class Addresses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(
          title: 'العناوين',
        ),
        body: Column(children: [
          Expanded(
            flex: 8,
            child: CustomScrollView(
              primary: false,
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.all(appWidth * 0.055),
                  sliver: SliverGrid.count(
                    childAspectRatio: appRatio * 0.95,
                    mainAxisSpacing: appHeight * 0.02,
                    crossAxisCount: 1,
                    children: [
                      addressItem(),
                      addressItem(),
                      addressItem(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.topCenter,
                          width: appWidth * 0.9,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('  اضف عنوان جديد',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: appWidth * 0.035),
                                          textAlign: TextAlign.right))),
                              Expanded(
                                  flex: 2,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      Icons.add_circle_outline,
                                      size: appWidth * 0.0475,
                                      color: Colors.white,
                                    ),
                                  )),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: appColor1,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Container())
                  ],
                ),
              ))
        ]));
  }
}
