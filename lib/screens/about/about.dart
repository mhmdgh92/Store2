import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appSizedBox.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'عن الكويتية ستور'),
      body: Material(
        child: Stack(
          children: <Widget>[
            Positioned(
                top: appHeight * 0.88,
                right: 0,
                left: 0,
                child: Image.asset(
                  "assets/bottom1.png",
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                )),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Image(
                      image: AssetImage('assets/logo1.png'),
                      width: appWidth*0.6,
                    ),
                  ),
                  Expanded(
                    flex: 11,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Expanded(flex: 2,child: Text('عن الكويتية ستور',
                              style: TextStyle(
                                  color: appColor2,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28)),),
                          Expanded(
                            flex: 9,
                            child: Container(
                              child: Text(aboutStr,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(color: appColor2, fontSize: appWidth*0.033)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image(
                      image: AssetImage('assets/bottom1.png'),
                      width: appWidth,
                      fit: BoxFit.fitWidth,
                    ),
                  )
                ],
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
