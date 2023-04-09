import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appSizedBox.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'محفظتي ونقاط الولاء'),
      body: Material(
        child: Stack(
          children: [
            Positioned(
                top: 0,
                child: Container(
                  height: appHeight * 0.15,
                  width: appWidth,
                  color: appColor1,
                )),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: appWidth * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 14,
                      child: Image(
                        image: AssetImage('assets/creditCard.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 6,
                      child: Container(
                        decoration: BoxDecoration(
                            color: appColor1,
                            borderRadius:
                                BorderRadius.circular(appWidth * 0.03)),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 10,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            'نقاط الولاء',
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: appWidth * 0.045,
                                                color: Colors.white),
                                          ),
                                        )),
                                    Expanded(
                                        flex: 10,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Text(
                                            '358',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: appWidth * 0.09,
                                                color: Colors.white),
                                          ),
                                        )),
                                    Expanded(flex: 2,child: Container()),
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: EdgeInsets.all(appWidth * 0.035),
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            appWidth * 0.03),
                                        color: Color(0x34FFFFFF)),
                                    child: Column(
                                      children: [
                                        Expanded(flex: 1, child: Container()),
                                        Expanded(
                                            flex: 2,
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                '    12345678 | ID',
                                                textDirection:
                                                    TextDirection.rtl,
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: appWidth * 0.04,
                                                    color: Colors.white),
                                              ),
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                '    محمود عدنان خلة',
                                                textDirection:
                                                    TextDirection.rtl,
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: appWidth * 0.04,
                                                    color: Colors.white),
                                              ),
                                            )),
                                        Expanded(flex: 1, child: Container()),
                                      ],
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 14,
                      child: Container(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  String aboutStr = 'الكويتية ستور علامة تجارية عالمية'
      ' متخصصة في توفير جميع المنتجات من الصين إلى الكويت وهي تابعة لشركة الكويتية للشحن شركة رسمية مسجلة بوزارة التجارة والصناعة بدولة الكويت وتأسست عام 2006 م'
      ' في جمهورية الصين الشعبية حيث نسعى جاهدين لتوفير منتجات بجودة عالية وبسعرها الحقيقي في الصين من خلال عدة وسائل إلكترونية لتقديم أفضل تجربة تسوق لعملائنا توفر الكويتية ستور أفضل المنتجات المبتكرة '
      'العالمية والصينية لأكثر من 1000 علامة تجارية في (الأجهزة الكهربائية – أدوات المطبخ – الأجهزة الرياضية –الأجهزة منزلية – الأثاث المنزلي – الأدوات الصحية – معدات التخييم – الإضاءة – الإلكترونيات – '
      'المنتجات الزراعية – الصحة والعناية – الأطفال -منتجات الحيوانات الأليفة .... وغيرها من المنتجات المتنوعة الأخرى الآن الصين صارت أقرب لك';
}
