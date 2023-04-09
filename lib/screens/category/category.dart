import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/brands/components/ProductItem.dart';
import 'package:store2/screens/fav/components/favItem.dart';
import 'package:store2/screens/shared/Objects/Product.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appPicker.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const myAppBar(title: 'العناية بالبشرة'),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: appPicker(
                            arrowIconColor: appColor1,
                            borderRadius: 5,
                            txtColor: Colors.grey,
                            showIcon: false,
                            onChange: () {},
                            data: '',
                            title: 'التصنيف')),
                    Expanded(
                        flex: 1,
                        child: appPicker(
                            arrowIconColor: appColor1,
                            borderRadius: 5,
                            txtColor: Colors.grey,
                            showIcon: false,
                            onChange: () {},
                            data: '',
                            title: 'رتب حسب'))
                  ],
                )),
            Expanded(
              flex: 7,
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
