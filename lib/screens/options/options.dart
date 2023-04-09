import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appCountryPickerIcon.dart';
import 'package:store2/screens/shared/appCustomItem.dart';
import 'package:store2/screens/shared/appPicker.dart';
import 'package:store2/screens/shared/appSwitch.dart';

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  String flag = 'kw';
  String currency = 'د.ك';

  countryNameChange(Country country) {
    setState(() {
      flag = country.countryCode.toLowerCase();
    });
  }

  changeCurrency(value) {
    setState(() {
      currency = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: 'إعدادات التطبيق',
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded(
                        flex: 5,
                        child: appCustomItem(
                            icon: Icons.notifications_active_outlined,
                            suffixWidget: appSwitch())),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                        flex: 5,
                        child: appCustomItem(
                          title: 'الدولة',
                          icon: Entypo.globe,
                          suffixWidget: appCountryPickerIcon(
                              flagCode: flag,
                              onChange: (value) => countryNameChange(value)),
                        )),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 5,
                      child: appCustomItem(
                          title: 'العملة',
                          icon: MaterialCommunityIcons.coin,
                          suffixWidget: appPicker(
                            padding: 0,
                            title: 'د.ك',
                            data: '',
                            txtColor: appColor1,
                            onChange: () {},
                            showIcon: false,
                          )),
                    )
                  ],
                )),
            Expanded(flex: 5, child: Container()),
          ],
        ),
      ),
    );
  }
}
