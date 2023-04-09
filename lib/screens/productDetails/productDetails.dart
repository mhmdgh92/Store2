import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/cart/components/quantityComp.dart';
import 'package:store2/screens/home/comps/ListOfProducts.dart';
import 'package:store2/screens/productDetails/comps/bottomSizePicker.dart';
import 'package:store2/screens/productDetails/comps/productTimer.dart';
import 'package:store2/screens/shared/CarouselDemo.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appBottomBar.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/appListItems.dart';
import 'package:store2/screens/shared/appListItemsWithSearch.dart';
import 'package:store2/screens/shared/appPicker.dart';
import 'package:store2/screens/shared/appRatingStars.dart';

import 'comps/productSize.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool showBottomMenu = false;
  bool productAdded = false;

  showBottomMenuFun(bool show) {
    print('hideBottomMenu');
    setState(() {
      showBottomMenu = show;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = productAdded?1.5:1.75;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: myAppBar(
        title: 'العناية بالبشرة',
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: appWidth * 0.0175),
                  color: Colors.white,
                  height: appHeight * screenHeight,
                  child: Column(
                    children: [
                      Expanded(flex: productAdded?5:11,child: productData()),
                      Expanded(
                          flex: productAdded?4:12,
                          child: productAdded ? AfterAdding() : BeforeAdding()),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomSizePicker(
            onClose: () => showBottomMenuFun(false),
            showBottomMenu: showBottomMenu,
          )
        ],
      ),
    );
  }

  BeforeAdding() {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: productSize(
              showFun: () => showBottomMenuFun(true),
            )),
        Expanded(flex: 1, child: row4()),
        Expanded(flex: 1, child: txt2()),
        Expanded(flex: 3, child: txt3()),
        Expanded(
            flex: 6,
            child: ListOfProducts(showAll: false, title: 'منتجات ذات صلة')),
      ],
    );
  }
}

productData() {
  return Column(
    children: [
      Expanded(flex: 6, child: img1()),
      Expanded(flex: 1, child: row()),
      Expanded(flex: 2, child: row2()),
      Expanded(flex: 1, child: row3()),
      Expanded(flex: 1, child: txt1()),
    ],
  );
}

AfterAdding() {
  return Column(children: [
    Expanded(flex: 1, child: row5()),
    Expanded(flex: 6, child: ListOfProducts(showAll: false, title: 'قد يعجبك أيضا')),
    Expanded(flex: 1, child: row6()),
  ]);
}

row6() {
  return Row(
    children: [
      Expanded(flex: 1,child:
      appElevatedButton(
          fontSize: 0.0275,
          borderRadius: 5,
          borderColor: Colors.black,
          color: Colors.black,
          textColor: Colors.white,
          text: 'اتمام الشراء',
          onPress: () {})
      ),
      Expanded(flex: 1,child: appElevatedButton(
          fontSize: 0.0275,
          borderRadius: 5,
          borderColor: Colors.black,
          color: Colors.transparent,
          textColor: Colors.black,
          text: 'اكمال التسوق',
          onPress: () {})),
    ],
  );
}

row5() {
  return Row(
    children: [
      Expanded(
          flex: 6,
          child: Column(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'تمت إضافة المنتج لعربة التسوق',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: appWidth * 0.035,
                          fontWeight: FontWeight.w900),
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'قيمة السلة : 1 منتجات - 14.49 ريال',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: darkGrey,
                          fontSize: appWidth * 0.035,
                          fontWeight: FontWeight.w800),
                    ),
                  )),
              Expanded(flex: 1, child: Container()),
            ],
          )),
      Expanded(
          flex: 1,
          child: Image(
            image: AssetImage('assets/completedIcon.png'),
          )),
    ],
  );
}

txt3() {
  return Text(
    'نص افتراضي حول المنتج المقدم للبيع, كريم اندر جلو يتميز بسهولة الاستخدام العرض بحيص يحتوي علي تركيبة تم اختيارها بعانية للحفاظ علي لون البشرة ناصعة الجمال و الحيوية من خلال نصوص  نص افتراضي حول المنتج المقدم للبيع, كريم اندر جلو يتميز بسهولة الاستخدام العرض بحيص يحتوي علي تركيبة تم اختيارها بعانية للحفاظ علي لون البشرة ناصعة الجمال و الحيوية من خلال نصوص',
    textAlign: TextAlign.right,
    style: TextStyle(fontSize: appWidth * 0.031, fontWeight: FontWeight.bold),
  );
}

txt2() {
  return Align(
    alignment: Alignment.centerRight,
    child: Text(
      'وصف المنتج',
      textAlign: TextAlign.right,
      style: TextStyle(
          color: appColor1,
          fontSize: appWidth * 0.04,
          fontWeight: FontWeight.w900),
    ),
  );
}

row4() {
  return Row(
    children: [
      Expanded(
          flex: 2,
          child: appElevatedButton(
              borderRadius: 8, text: 'اضافة المنتج', onPress: () {})),
      Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: appHeight * 0.009),
              child: quantityComp(signsColor: appColor1, size: 0.06))),
    ],
  );
}

txt1() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: appHeight * 0.005),
    child: Container(
      width: double.infinity,
      height: double.infinity,
      color: offWhite2,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'السعر شامل إلى المستودع بالكويت',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(
              color: Colors.grey,
              fontSize: appWidth * 0.03,
              fontWeight: FontWeight.w700),
        ),
      ),
    ),
  );
}

row3() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
    child: Row(
      children: [
        Expanded(flex: 1, child: Container()),
        Expanded(
            flex: 1,
            child: appElevatedButton(
                fontSize: 0.025,
                color: Colors.transparent,
                borderColor: appColor1,
                textColor: appColor1,
                text: 'قيم الأن',
                onPress: () {})),
        Expanded(
            flex: 1,
            child: Row(children: [
              Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '(6 مراجعات)',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: appWidth * 0.03,
                          fontWeight: FontWeight.w900),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '2.0',
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: appColor1,
                          fontSize: appWidth * 0.035,
                          fontWeight: FontWeight.w900),
                    ),
                  ))
            ])),
        Expanded(
            flex: 1,
            child: appRatingStars(itemSize: 0.0435, glowColor: Colors.red)),
      ],
    ),
  );
}

row2() {
  return Row(
    children: [
      Expanded(
          flex: 1,
          child: Text(
            '168.48 د.ك',
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: appColor1,
                fontSize: appWidth * 0.045,
                fontWeight: FontWeight.w900),
          )),
      Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'مثال نصي افتراضي للعنوان المرفق هنا بالشكل الموضح للمنتج',
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: appWidth * 0.04, fontWeight: FontWeight.w900),
            ),
          ))
    ],
  );
}

List<String> imgList = [
  'https://smaller-pictures.appspot.com/images/dreamstime_xxl_65780868_small.jpg',
  'https://smaller-pictures.appspot.com/images/dreamstime_xxl_65780868_small.jpg',
  'https://smaller-pictures.appspot.com/images/dreamstime_xxl_65780868_small.jpg',
];

img1() {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Stack(children: [
      Positioned.fill(
          child: CarouselWithIndicatorDemo(
        imgList: imgList,
      )),
      Center(
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Row(
                children: [
                  Expanded(flex: 7, child: productTools()),
                  Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF16654),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'تخفيض 30%',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: appWidth * 0.035,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(flex: 7, child: Container()),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '   متبقي للخصم',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontSize: appWidth * 0.025,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: appColor1,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2.5)),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: productTimer(textSize: 0.035),
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Expanded(flex: 1, child: Container()),
          ],
        ),
      )
    ]),
  );
}

productTools() {
  return Row(
    children: [
      Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Icon(Icons.favorite_border,
                              color: appColor1, size: appWidth * 0.06)),
                      Expanded(
                          flex: 1,
                          child: Icon(Icons.share,
                              color: appColor1, size: appWidth * 0.06)),
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.compare_arrows,
                            size: appWidth * 0.07,
                            color: appColor1,
                          )),
                    ],
                  )),
              Expanded(flex: 3, child: Container()),
            ],
          )),
      Expanded(flex: 4, child: Container()),
    ],
  );
}

row() {
  return Row(
    children: [
      Expanded(
          flex: 1,
          child: Text(
            '%50',
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: TextStyle(
                backgroundColor: Color(0xFFF9B6B2),
                color: appColor1,
                fontSize: appWidth * 0.04,
                fontWeight: FontWeight.w900),
          )),
      Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '500 ريال',
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
                fontSize: appWidth * 0.035,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          )),
      Expanded(flex: 1, child: Container()),
      Expanded(
          flex: 1,
          child: Image(
            image: AssetImage('assets/brandSample.png'),
            fit: BoxFit.cover,
          )),
      Expanded(
          flex: 1,
          child: Text(
            'بيور بيوتي',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: appColor1,
                fontSize: appWidth * 0.04,
                fontWeight: FontWeight.w900),
          )),
    ],
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
