import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appSizedBox.dart';
import 'package:store2/screens/shared/minTabItem.dart';

class HelpCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: 'مركز المساعدة',
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            appSizedBox(space: 1),
            Expanded(
                flex: 4,
                child: Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage('assets/helpCenterImg.png'),
                  ),
                )),
            Expanded(
                flex: 12,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SectionName('محادثة حية'),
                      minTabItem(title: 'خدمة العملاء',
                          prefixIcon: AntDesign.customerservice),
                      SectionName('مساعدة إضافية'),
                      minTabItem(title: 'راسلنا',
                          prefixIcon: FontAwesome.send_o),
                      minTabItem(title: 'الشروط والأحكام',
                          prefixIcon: Icons.article_outlined),
                      minTabItem(title: 'سياسة الإستبدال والأسترجاع',
                          prefixIcon: Icons.description_outlined),
                      minTabItem(title: 'سياسة الخصوصية',
                          prefixIcon: Icons.text_snippet_outlined),
                      minTabItem(title: 'قيمنا',
                          prefixIcon: Ionicons.md_ribbon),
                      SectionName('تابعنا على السوشال ميديا'),
                      minTabItemImg(title: 'سناب شاب',imageName: 'snapchat'),
                      minTabItemImg(title: 'انستغرام',
                          imageName: 'instagram'),
                      minTabItemImg(title: 'واتساب اب',
                          imageName: 'whatsapp'),
                      minTabItemImg(title: 'يوتيوب',
                          imageName: 'youtube'),
                      minTabItemImg(title: 'تليجرام',
                          imageName: 'telegram'),
                      minTabItemImg(title: 'فيس بوك',
                          imageName: 'facebook'),
                      minTabItemImg(title: 'تويتر',
                          imageName: 'twitter'),
                      Container(height: appHeight*0.05,width: 0,)
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  SectionName(String str) {
    return Text(str,textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15));
  }
}
