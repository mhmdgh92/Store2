import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:store2/constants.dart';

class myAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;
  final bool showShare;
  final bool showLogo;

  const myAppBar({
    this.title = '',
    this.showLogo = false,
    this.showShare = false,
    this.showBack = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: appHeight * 0.2,
      elevation: 0,
      centerTitle: true,
      title: showLogo
          ? Image(
              image: AssetImage('assets/logo2.png'), width: appWidth * 0.375)
          : Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: appWidth * 0.045),
            ),
      leading: !showShare
          ? null
          : Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.share, size: appWidth * 0.05),
              )),
      backgroundColor: appColor1,
      actions: (!showBack || showLogo)
          ? null
          : <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_forward,
                      size: appWidth * 0.075,
                    ),
                  ))
            ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appHeight * 0.085);
}
