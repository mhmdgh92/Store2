import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:store2/screens/shared/Objects/Order.dart';
import 'package:store2/screens/shared/enums.dart';

import '../../../constants.dart';

orderItem({Order? order}) {
  if (order == null) order = Order.Default();

  return Padding(
    padding: EdgeInsets.all(5),
    child: Container(
      height: appHeight * 0.12,
      decoration:
          BoxDecoration(border: Border.all(color: appBorderColor, width: 0.8)),
      child: Row(
        children: [
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  Expanded(flex: 2, child: Container()),
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                          flex: 7,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Colors.white,
                                onPrimary: Colors.red,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1.5, color: appColor1),
                                  borderRadius: new BorderRadius.circular(35.0),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'عرض',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: appWidth * 0.03,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ),
                  Expanded(flex: 2, child: Container()),
                ],
              )),
          Expanded(
              flex: 15,
              child: Column(
                children: [
                  Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'االاجمالي (${order.totalCost}رس - ${order.totalItems} عنصر )   ',
                            style: TextStyle(fontSize: appWidth * 0.0275),
                          ),
                          Text(
                            order.id + '    ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: appWidth * 0.045,
                                color: appColor1,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OrderStatusComp(order),
                          Text(
                            '  ' + order.date + '  ',
                            style: TextStyle(fontSize: appWidth * 0.025,),
                          ),
                          Icon(
                            Icons.calendar_today,
                            size: appWidth * 0.0375,
                            color: Colors.grey,
                          ),
                        ],
                      ))
                ],
              )),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    ),
  );
}

OrderStatusComp(Order order) {
  Color statusColor = appCompleted;
  IconData statusIcon = Icons.check;
  if (order.orderStatus == OrderStatus.waiting) {
    statusColor = appWaiting;
    statusIcon = Icons.timelapse;
  } else if (order.orderStatus == OrderStatus.canceled) {
    statusColor = appCanceled;
    statusIcon = Icons.close_outlined;
  }

  return Row(
    children: [
      Text(
        order.statusToAr() + '  ',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: statusColor, fontSize: appWidth * 0.025),
      ),
      Icon(
        statusIcon,
        size: appWidth * 0.0375,
        color: statusColor,
      ),
    ],
  );
}
