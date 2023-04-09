
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class productSize extends StatelessWidget {
  final Function showFun;

  const productSize(
      {Key? key,
        required this.showFun,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
          onTap: () => showFun(),
          child: Container(
            color: offWhite2,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: appWidth * 0.06,
                      color: darkGrey,
                    )),
                Expanded(
                    flex: 8,
                    child: Text(
                      '  الحجم',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style:
                      TextStyle(fontSize: appWidth * 0.04, color: darkGrey),
                    )),
              ],
            ),
          ));
  }
}
