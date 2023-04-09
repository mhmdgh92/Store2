import 'package:flutter/material.dart';
import 'package:store2/screens/completeOrder/screens/FromStoreHouse/StoreDeliveryDone.dart';
import 'package:store2/screens/completeOrder/screens/HomeDelivery/HomeDeliveryBilling.dart';
import 'package:store2/screens/shared/Objects/Order.dart';
import 'package:store2/screens/shared/appBar.dart';
import 'package:store2/screens/shared/enums.dart';

import 'screens/FromStoreHouse/StoreDeliveryBilling.dart';
import 'comps/orderStatusComp.dart';
import 'deliveryMethod.dart';

class CompleteOrder extends StatefulWidget {
  const CompleteOrder({Key? key}) : super(key: key);

  @override
  _CompleteOrderState createState() => _CompleteOrderState();
}

class _CompleteOrderState extends State<CompleteOrder> {
  OrderingStatus orderingStatus = OrderingStatus.Billing;
  OrderDeliveryMethod orderDeliveryMethod = OrderDeliveryMethod.HomeDelivery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(title: 'اتمام الطلب'),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child:
                    orderStatusComp(false, OrderingStatus.Sent)),
            Expanded(flex: 7, child: HomeDeliveryDone()),
          ],
        ));
  }
}
