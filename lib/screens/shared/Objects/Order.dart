import 'package:flutter/material.dart';

import '../enums.dart';

class Order {
  late String id;
  late double totalCost;
  late int totalItems;
  late OrderStatus orderStatus;
  late String date;

  Order(String id, double totalCost, int totalItems, OrderStatus orderStatus,
      String date) {
    this.id = id;
    this.totalCost = totalCost;
    this.totalItems = totalItems;
    this.orderStatus = orderStatus;
    this.date = date;
  }

  Order.Default() {
    this.id = '88780#';
    this.totalCost = 1400;
    this.totalItems = 15;
    this.orderStatus = OrderStatus.completed;
    this.date = 'يناير 10-2017';
  }

  String statusToAr() {
    if (orderStatus == OrderStatus.completed)
      return 'مكتمل';
    else if (orderStatus == OrderStatus.waiting) return 'قيد الانتظار';
    return 'ملغي';
  }
}
