import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appElevatedButton.dart';
import 'package:store2/screens/shared/appInputFeildWithScrollMenu.dart';
import 'package:store2/screens/shared/appListItemsWithSearch.dart';
import 'package:store2/screens/shared/appSizedBox.dart';
import 'package:store2/screens/shared/min/minAppCountryPicker.dart';
import 'package:store2/screens/shared/min/minAppPicker.dart';
import 'package:store2/screens/shared/min/minAppTextInput.dart';

class Bill extends StatefulWidget {
  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  String countryName = 'الكويت';
  String flag = 'kw';
  String cityName = 'اختر المنطقة';
  bool showAlert = false;
  bool showBottomMenu = false;

  countryNameChange(Country country) {
    setState(() {
      countryName = country.name;
      flag = country.countryCode.toLowerCase();
    });
  }

  cityNameChange(String city) {
    setState(() {
      cityName = city;
    });
  }

  ShowAlert() async {
    setState(() {
      showAlert = true;
    });
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      showAlert = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'الفواتير والشحن'),
      body: Stack(children: <Widget>[
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          bottom: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Material(
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          minAppTextInput(
                              hintTxt: 'الاسم الأول', icon: Icons.person),
                          minAppTextInput(
                              hintTxt: 'الاسم الأخير', icon: Icons.person),
                          appInputFeildWithScrollMenu(
                              hintTxt: 'رقم الموبايل',
                              icon: Icons.phone_android,
                              padding: 3,
                              height: 0.065,
                              leftAlign: true),
                          minAppTextInput(
                              hintTxt: 'البريد الالكتروني', icon: Icons.mail),
                          minAppCountryPicker(
                              countryName: countryName,
                              flagCode: flag,
                              onChange: (value) => countryNameChange(value)),
                          minAppPicker(
                              title: cityName,
                              data: JsonData,
                              onChange: (value) => cityNameChange(value)),
                          minAppTextInput(hintTxt: 'القطعة', icon: Icons.map),
                          minAppTextInput(
                              hintTxt: 'العنوان - الشارع',
                              icon: Icons.directions),
                          minAppTextInput(
                              hintTxt: 'الجادة',
                              icon: Icons.directions_outlined),
                          minAppTextInput(
                              hintTxt: 'رقم المبنى', icon: Icons.domain),
                          SizedBox(
                            width: appWidth * 0.78,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex:1,
                                  child: minAppTextInput(
                                    hintTxt: 'رقم الشقة',
                                    icon: Icons.home,
                                    iconFlex: 2,
                                  ),
                                ),
                                Expanded(
                                  flex:1,
                                  child: minAppTextInput(
                                    hintTxt: 'رقم الطابق',
                                    icon: Icons.format_list_numbered,
                                    iconFlex: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          appElevatedButton(
                              text: 'متابعة تسجيل الطلب',
                              color: appColor1,
                              onPress: () {
                                this.ShowAlert();
                              }),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        showAlert
            ? Positioned(
                top: 0,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    color: Color(0xFFC4161C),
                    width: appWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'تعذر إكمال العملية (خطأ في ارسال البيانات)   ',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Icon(
                            Icons.info_outline_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : Positioned(
                top: 0,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: null,
                ),
              ),
        !showBottomMenu
            ? Positioned(
                top: 0,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: null,
                ),
              )
            : Positioned.fill(
                child: Container(
                  color: (Colors.black.withOpacity(0.5)),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.white,
                        height: appHeight * 0.5,
                        width: appWidth,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: appColor1,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 23, left: 23),
                                  child: Positioned.fill(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        GestureDetector(
                                          child: Text("رجوع",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: appColor3)),
                                          onTap: () => print('here'),
                                        ),
                                        GestureDetector(
                                          child: Text("اختر المنطقة",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: appColor3)),
                                          onTap: () => print('here'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: appListItemsWithSearch(
                                hintTxt: 'اختر المنطقة',
                                onChoose: () {},
                                data: ['1', '2', '3'],
                                onBack: () {},
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              ),
      ]),
    );
  }
}
