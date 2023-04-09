import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/completeOrder/comps/OrderSummary.dart';
import 'package:store2/screens/home/comps/ListOfProducts.dart';
import 'package:store2/screens/orderDetails/comps/DeliveryItem.dart';
import 'package:store2/screens/orderDetails/comps/InquriesItem.dart';
import 'package:store2/screens/orderDetails/comps/orderProducts.dart';

class CurrentOrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool collapsedItem = true;
    double screenHeight = collapsedItem ? 1.5 : 1.7;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: appWidth * 0.03),
          height: appHeight * screenHeight,
          child: Column(children: [
            Expanded(
                flex: 1,
                child: Column(children: [
                  Expanded(
                      flex: collapsedItem ? 4 : 5,
                      child: InquriesItem(collapsedItem: collapsedItem)),
                  Expanded(
                      flex: 3,
                      child: DeliveryItem(
                          title: 'عنوان التوصيل',
                          desc:
                              'خالد \nالمملكة العربية السعودية، الرياض\n  966000000000000')),
                  Expanded(
                      flex: 2,
                      child: DeliveryItem(
                          title: 'وقت التوصيل',
                          desc: 'شهرين إلى ثلاثة أشهر من تاريخ الطلب')),
                  Expanded(
                    flex: 2,
                    child: DeliveryItem(
                        title: 'الدفع', desc: 'البطاقة الائتمانية'),
                  ),
                  Expanded(flex: 4, child: OrderSummary(padding: 0)),
                  Expanded(flex: 5, child: orderProducts()),
                ]))
          ]),
        ),
      ),
    );
  }
}
