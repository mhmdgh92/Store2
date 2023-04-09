import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store2/screens/shared/enums.dart';

import '../../../constants.dart';

orderStatusComp(
    bool FromStore, OrderingStatus orderingStatus) {
  double thickness = appWidth * 0.012;
  int dotsFlex = 2;
  int LinesFlex = 5;
  Color notCompletedColor = darkGrey;
  Color completedColor = appColor1;

  String getTxt(int nu) {
    if (FromStore) {
      if (nu == 1 || nu == 2) return '           الدفع';
      return '      تم الارسال';
    } else {
      if (nu == 1)
        return '      عنوان الشحن';
      else if (nu == 2) return 'الدفع';
      return '        تم الارسال';
    }
  }

  Circle(int nu, Color color) {
    return Flexible(
        flex: dotsFlex,
        child: CircleAvatar(
          backgroundColor: color,
          radius: appHeight * 0.0155,
          child: orderingStatus.index >= nu || orderingStatus.index == 2
              ? Icon(
                  Icons.check_outlined,
                  size: appWidth * 0.04,
                  color: Colors.white,
                )
              : Text(
                  nu.toString(),
                  style:
                      TextStyle(color: Colors.white, fontSize: appWidth * 0.03),
                ),
        ));
  }

  Line(Color color) {
    return Flexible(
      flex: LinesFlex,
      child: Divider(thickness: thickness, color: color),
    );
  }

  desc(String txt, {TextAlign textAlign = TextAlign.center}) {
    return Text(txt, textAlign: textAlign);
  }

  return SizedBox(
    width: appWidth,
    child: Column(
      children: [
        Expanded(flex: 1, child: Container()),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Circle(
                  3,
                  orderingStatus.index > 1
                      ? completedColor
                      : notCompletedColor),
              Line(orderingStatus.index > 1
                  ? completedColor
                  : notCompletedColor),
              FromStore
                  ? Flexible(flex: 0, child: Container())
                  : Circle(
                      2,
                      orderingStatus.index >= 1
                          ? completedColor
                          : notCompletedColor),
              Line(orderingStatus.index > 0
                  ? completedColor
                  : notCompletedColor),
              Circle(
                  1,
                  orderingStatus.index >= 0
                      ? completedColor
                      : notCompletedColor)
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                Expanded(flex: 1, child: desc(getTxt(3),textAlign: TextAlign.left)),
                Expanded(
                    flex: 1,
                    child: FromStore
                        ? Container()
                        : desc(getTxt(2),
                            textAlign:
                                FromStore ? TextAlign.left : TextAlign.center)),
                Expanded(flex: 1, child: desc(getTxt(1))),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
