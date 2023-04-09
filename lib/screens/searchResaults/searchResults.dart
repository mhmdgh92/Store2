import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/brands/components/ProductItem.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appPicker.dart';
import 'package:store2/screens/shared/appTextInput.dart';

class SearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const myAppBar(title: 'نتائج البحث'),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: appInputFeild(
                  inputFlex: 12,
                  width: 0.9,
                  iconFlex: 1,
                  hintTxt: 'ابحث عن منتج/ماركة',
                  iconBackGroundColor: Colors.transparent,
                  icon: Icons.search,
                  iconColor: appColor1,
                  iconSize: 0.035,
                  borderRadius: 15,
                )),
            Expanded(
              flex: 9,
              child: CustomScrollView(
                primary: false,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(20),
                    sliver: SliverGrid.count(
                      childAspectRatio: appRatio * 0.4,
                      crossAxisSpacing: appWidth * 0.035,
                      mainAxisSpacing: appHeight * 0.02,
                      crossAxisCount: 2,
                      children: [
                        ProductItem(showTimer: false),
                        ProductItem(showTimer: false),
                        ProductItem(showTimer: false),
                        ProductItem(showTimer: false),
                        ProductItem(showTimer: false),
                        ProductItem(showTimer: false),
                        ProductItem(showTimer: false),
                        ProductItem(showTimer: false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
