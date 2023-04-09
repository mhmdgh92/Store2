import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appBottomBar.dart';

import 'components/brandItem.dart';

class Brands extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(
          title: 'الماركات',
        ),
        bottomNavigationBar: appBottomBar(
          selectedIndex: 4,
        ),
        body: CustomScrollView(
          primary: false,
          slivers: [

            SliverPadding(
              padding: EdgeInsets.all(appWidth*0.035),
              sliver: SliverGrid.count(

                childAspectRatio: appRatio * 1.4,
                crossAxisSpacing: appWidth * 0.035,
                mainAxisSpacing: appHeight * 0.02,
                crossAxisCount: 2,
                children: [
                  brandItem(imgUrl: 'assets/brandSample.png'),
                  brandItem(imgUrl: 'assets/brandSample.png'),
                  brandItem(imgUrl: 'assets/brandSample.png'),
                  brandItem(imgUrl: 'assets/brandSample.png'),
                  brandItem(imgUrl: 'assets/brandSample.png'),
                  brandItem(imgUrl: 'assets/brandSample.png'),
                  brandItem(imgUrl: 'assets/brandSample.png'),
                  brandItem(imgUrl: 'assets/brandSample.png'),
                ],
              ),
            ),
          ],
        ));
  }
}