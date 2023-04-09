import 'package:flutter/material.dart';
import 'package:store2/screens/shared/enums.dart';

import '../../../constants.dart';

OrderStatusCompHor() {
  String getTxt(OrderProductStatus orderProductStatus) {
    int nu = orderProductStatus.index;
    if (nu == 0)
      return 'معلق للتحقق';
    else if (nu == 1)
      return 'تم التأكيد';
    else if (nu == 2)
      return 'جاري التحضير';
    else if (nu == 3) return 'تم الشحن';
    return 'تم التسليم';
  }

  Color StatusColor(ProcessCondition processCondition) {
    Color color = Colors.grey;
    if (processCondition == ProcessCondition.Processing)
      color = Colors.black;
    else if (processCondition == ProcessCondition.Completed) color = appColor1;
    return color;
  }

  IconData CircleIcon(ProcessCondition processCondition) {
    IconData icon = Icons.radio_button_off;
    if (processCondition == ProcessCondition.Processing)
      icon = Icons.radio_button_checked_outlined;
    else if (processCondition == ProcessCondition.Completed)
      icon = Icons.check_circle_sharp;
    return icon;
  }

  Circle(ProcessCondition processCondition,
      OrderProductStatus orderProductStatus) {
    return Row(
      children: [
        Expanded(
            flex: 8,
            child: Text(
              getTxt(orderProductStatus),
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: StatusColor(processCondition)),
            )),
        Expanded(
          flex: 1,
          child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: appHeight * 0.0155,
              child: Icon(
                CircleIcon(processCondition),
                size: appWidth * 0.055,
                color: StatusColor(processCondition),
              )),
        ),
      ],
    );
  }

  Line(ProcessCondition processCondition, {String subText = ''}) {
    return Row(
      children: [
        Expanded(
            flex: 8,
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                subText,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: appWidth * 0.03,
                    color: Colors.grey),
              ),
            )),
        Expanded(
          flex: 1,
          child: VerticalDivider(
              thickness: 3, color: StatusColor(processCondition)),
        ),
      ],
    );
  }

  return SizedBox(
    width: appWidth,
    child: Column(
      children: [
        Expanded(
            flex: 1,
            child: Circle(
                ProcessCondition.Completed, OrderProductStatus.Checking)),
        Expanded(flex: 1, child: Line(ProcessCondition.Completed)),
        Expanded(
            flex: 1,
            child: Circle(
                ProcessCondition.Completed, OrderProductStatus.Confirmed)),
        Expanded(
            flex: 2,
            child: Line(ProcessCondition.Completed,
                subText: 'لقد تم تأكيد طلبك وسيتم تحضيره قريبا')),
        Expanded(
            flex: 1,
            child: Circle(
                ProcessCondition.Processing, OrderProductStatus.Preparing)),
        Expanded(flex: 1, child: Line(ProcessCondition.Processing)),
        Expanded(
            flex: 1,
            child:
                Circle(ProcessCondition.Waiting, OrderProductStatus.Shipped)),
        Expanded(flex: 1, child: Line(ProcessCondition.Waiting)),
        Expanded(
            flex: 1,
            child:
                Circle(ProcessCondition.Waiting, OrderProductStatus.Delivered)),
      ],
    ),
  );
}
