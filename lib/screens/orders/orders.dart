import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/fav/components/favItem.dart';
import 'package:store2/screens/shared/Objects/Order.dart';
import 'package:store2/screens/shared/Objects/Product.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/appSizedBox.dart';

import 'components/orderItem.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const myAppBar(title: 'طلباتي'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children:[
              orderItem(order: Order.Default()),
            ],
          ),
        ),
      ),
    );
  }
}
