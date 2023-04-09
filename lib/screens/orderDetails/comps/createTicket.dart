import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:store2/screens/shared/appAttach.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/appPicker.dart';
import 'package:store2/screens/shared/appRadioBTN.dart';
import 'package:store2/screens/shared/appTextInput.dart';

import '../../../constants.dart';

CreateTicket() {
  return Scaffold(
    // resizeToAvoidBottomInset: false,
    backgroundColor: (Colors.black.withOpacity(0.5)),
    body: Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        child: Container(
          color: offWhite2,
          height: appHeight * 0.85,
          width: appWidth,
          padding: EdgeInsets.symmetric(horizontal: appWidth * 0.03),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.close_rounded,
                    color: Colors.grey,
                    size: appWidth * 0.05,
                  ),
                ),
              ),
              Expanded(
                flex: 15,
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: appPicker(
                          width: double.infinity,
                          showIcon: false,
                          data: '',
                          textSize: 0.04,
                          txtColor: Colors.grey,
                          title: 'ماهي مشكلتك؟',
                          arrowIconColor: appColor1,
                          onChange: () {},
                        )),
                    Expanded(
                        flex: 1,
                        child: appInputFeild(
                            width: double.infinity,
                            showIcon: false,
                            hintTxt: 'رقم الطلب')),
                    Expanded(
                        flex: 1,
                        child: appAttach(
                            width: double.infinity,
                            onChange: () {},
                            fontSize: 0.035,
                            title: 'صورة عن المشكلة (اختياري)')),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 12,
                                        child: Text(
                                          'حد اقصي ٥ صور ، وما يزيد حجم الصوره ٥ ميجا',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: appColor1,
                                              fontSize: appWidth * 0.025),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Icon(
                                          Icons.info_outline_rounded,
                                          color: appColor1,
                                          size: appWidth * 0.04,
                                        ))
                                  ],
                                )),
                            Expanded(
                                flex: 3,
                                child: CustomScrollView(
                                  reverse: true,
                                  scrollDirection: Axis.horizontal,
                                  slivers: [
                                    SliverPadding(
                                      padding: EdgeInsets.all(0),
                                      sliver: SliverGrid.count(
                                        childAspectRatio: appRatio * 0.6,
                                        crossAxisSpacing: appWidth * 0.035,
                                        mainAxisSpacing: appHeight * 0.01,
                                        crossAxisCount: 1,
                                        children: [
                                          ImgItem(),
                                          ImgItem(),
                                          ImgItem(),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                            Expanded(flex: 1, child: Container()),
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: appInputFeild(
                          hintTxt: 'أضف تفاصيل المشكلة',
                          showIcon: false,
                          width: double.infinity,
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                              flex: 8,
                              child: Container(
                                color: Color(0xAE92036),
                                width: double.infinity,
                                height: double.infinity,
                                child: Padding(
                                  padding: EdgeInsets.all(appWidth * 0.01),
                                  child: Text(
                                    'نشكر لك تجربتك الكويتية ستور، نعتذر عن أي خلل. سوف يصلك الرد بأسرع وقت على الإيميل المدرج',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Color(0xFFE92036),
                                        fontSize: appWidth * 0.0295,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(flex: 1, child: Container())
                          ],
                        )),
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: appElevatedButton(
                      width: double.infinity,
                      fontSize: 0.039,
                      text: 'تأكيد وارسال',
                      onPress: () {})),
            ],
          ),
        ),
      ),
    ),
  );
}

ImgItem() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8.0),
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/sampleImg.png'), fit: BoxFit.fill),
      ),
      child: Padding(
        padding: EdgeInsets.all(appWidth * 0.01),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.delete,
                          size: appWidth * 0.0375,
                          color: appColor1,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(),
                    ),
                  ],
                )),
            Expanded(flex: 3, child: Container()),
          ],
        ),
      ),
    ),
  );
}

specificTxt() {
  return RichText(
    text: TextSpan(
      text: "متاح لك إعادة الطلب مدة ",
      style: TextStyle(color: Colors.grey, fontSize: appWidth * 0.02),
      children: <TextSpan>[
        TextSpan(
            text: ' 3 أيام ',
            style: TextStyle(color: appColor1, fontSize: appWidth * 0.02)),
        TextSpan(
            text: 'من تاريخ ووقت الطلب',
            style: TextStyle(color: Colors.grey, fontSize: appWidth * 0.02)),
      ],
    ),
  );
}

radioBTNItem(String title, bool checked) {
  return Expanded(
      flex: 1,
      child: Container(
        decoration:
            BoxDecoration(border: Border(bottom: BorderSide(color: offWhite2))),
        child: Row(
          children: [
            Expanded(
                flex: 7,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          title,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontWeight:
                                  checked ? FontWeight.w900 : FontWeight.w300),
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(flex: 1, child: appRadioBTN(checked, size: 0.055)),
          ],
        ),
      ));
}

radioBTNItemWithSubTitle(String title, bool checked) {
  return Expanded(
      flex: 1,
      child: Container(
        decoration:
            BoxDecoration(border: Border(bottom: BorderSide(color: offWhite2))),
        child: Row(
          children: [
            Expanded(
                flex: 7,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          title,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontWeight:
                                  checked ? FontWeight.w900 : FontWeight.w300),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: specificTxt(),
                      ),
                    ),
                  ],
                )),
            Expanded(flex: 1, child: appRadioBTN(checked, size: 0.055)),
          ],
        ),
      ));
}
