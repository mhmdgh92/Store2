import 'package:flutter/material.dart';
import 'package:store2/constants.dart';

class appBottomBar extends StatelessWidget implements PreferredSizeWidget {
  final int selectedIndex;

  const appBottomBar({this.selectedIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey)
      ),
      child: BottomNavigationBar(
        type : BottomNavigationBarType.fixed,
        backgroundColor: appColor6,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'حسابي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'عربة التسوق',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.label_outline_sharp),
            label: ' الماركات    ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            label: 'الأقسام',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'الرئيسية',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appHeight * 0.085);

  void _onItemTapped(int value) {}
}
