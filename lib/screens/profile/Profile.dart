import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appBottomBar.dart';
import 'package:store2/screens/shared/tabItem.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        showLogo: true,
      ),
      bottomNavigationBar: appBottomBar(
        selectedIndex: 0,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: appWidth * 0.93,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/profileTopImgBack.png'),
                        fit: BoxFit.fitWidth),
                  ),
                  child: Row(
                    children: [
                      Expanded(flex: 3, child: Container()),
                      Expanded(
                          flex: 6,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'أهلا / محمد أحمد حمد',
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      fontSize: 0.035 * appWidth,
                                      color: appColor1,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'mohammed@gmail.com',
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      fontSize: 0.03 * appWidth,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image(
                              image: AssetImage('assets/flyerRoundedIcon.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          )),
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 12,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    tabItem(
                        title: 'معلوماتي',
                        prefixIcon: Icons.info_outline_rounded),
                    tabItem(title: 'مفضلتي', prefixIcon: Icons.favorite_border),
                    tabItem(title: 'طلباتي', prefixIcon: Entypo.box),
                    tabItem(title: 'عناويني', prefixIcon: Icons.location_on),
                    tabItem(
                        title: 'المحفظة',
                        prefixIcon: Icons.account_balance_wallet),
                    tabItem(
                        title: 'مركز المساعدة',
                        prefixIcon: Icons.help_outline_outlined),
                    tabItem(
                        title: 'اعدادات التطبيق', prefixIcon: Icons.settings),
                    tabItem(
                        title: 'عن الكويتية ستور',
                        prefixIcon: Icons.info_outline_rounded),
                    tabItem(
                        title: 'تسجيل الخروج', prefixIcon: Icons.exit_to_app),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        '4.20.3 نسخة التطبيق',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
