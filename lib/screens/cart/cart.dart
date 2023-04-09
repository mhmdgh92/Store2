import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/cart/components/cartItem.dart';
import 'package:store2/screens/shared/Objects/CartItem.dart';
import 'package:store2/screens/shared/Objects/Product.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appBottomBar.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';

class Cart extends StatelessWidget {
  late int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const myAppBar(title: 'عربة التسوق'),
        bottomNavigationBar: appBottomBar(
          selectedIndex: 1,
        ),
        body: itemCount == 0 ? emptyCart() : productsCart());
  }

  imgAndTxt1() {
    return Column(
      children: [
        Expanded(
          flex: 9,
          child: Image(
            image: AssetImage('assets/emptyCart.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
        Expanded(
            flex: 2,
            child: Text('لا يوجد عناصر بعربة التسوق',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: appColor4,
                    fontWeight: FontWeight.bold,
                    fontSize: appWidth * 0.041)))
      ],
    );
  }

  emptyCart() {
    return Column(
      children: [
        Expanded(flex: 2, child: Container()),
        Expanded(flex: 6, child: imgAndTxt1()),
        Expanded(flex: 4, child: Container()),
      ],
    );
  }

  productsCart() {
    return Column(
      children: [
        Expanded(flex: 10,child: SingleChildScrollView(
          child: Column(
            children: [
              cartItem(CartItem.Default()),
              cartItem(CartItem.Default()),
              cartItem(CartItem.Default()),
            ],
          ),
        )),
        Expanded(flex: 2,child: Material(
          elevation: 1,
          child: Column(
            children: [
              Expanded(flex: 5,child: Align(
                alignment: Alignment.centerRight,
                child: Text('   2 منتجات - 49.68 د.ك',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: appWidth * 0.041)),
              )),
              Expanded(flex: 12,child: appElevatedButton(width: 0.9,text: 'إختر طريقة الاستلام', onPress: (){},)),
              Expanded(flex: 1,child: Container())
            ],
          ),
        ))
      ],
    );
  }
}
