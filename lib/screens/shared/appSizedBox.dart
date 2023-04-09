import 'package:flutter/material.dart';

import '../../constants.dart';

class appSizedBox extends StatelessWidget {
  final double space;

  const appSizedBox({required this.space});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: appWidth * space/100, height: appHeight * space/100);
  }
}
