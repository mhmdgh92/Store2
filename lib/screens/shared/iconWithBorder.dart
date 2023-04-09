import 'package:flutter/material.dart';
import 'package:store2/constants.dart';

class IconWithBorder extends StatelessWidget {

  final IconData icon;

  const IconWithBorder({Key? key, this.icon=Icons.person}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: appWidth*0.03,
        child: CircleAvatar(
          radius: appWidth*0.028,
          backgroundColor: Colors.white,
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              icon,
              size: appWidth*0.0375,
              color: appColor4,
            ),
          ),
        ),
      ),
    );
  }
}
