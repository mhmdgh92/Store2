import 'package:flutter/material.dart';
import 'package:store2/constants.dart';

class appLoading extends StatelessWidget {
  final double height;
  final double width;
  final double strokWidth;
  appLoading({this.height = 0.035, this.width = 0.06,this.strokWidth=0.005});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: appHeight * height,
        width: appWidth * width,
        child: CircularProgressIndicator(
          strokeWidth: strokWidth * appWidth,
          color: Colors.white,
        ));
  }
}
