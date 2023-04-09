import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appBar.dart';
import '../../constants.dart';
import 'comps/cancelationTicket.dart';
import 'comps/createTicket.dart';
import 'comps/orderNu.dart';
import 'comps/orderTab.dart';
import 'screens/CurrentOrderDetails.dart';
import 'screens/CurrentOrderShippingDetails.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  bool OrderDetailsOrFollow = true;
  bool showCancelationMenu = true;
  bool showCreateTicket = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: myAppBar(title: 'تفاصيل الطلب'),
        body: Stack(
          children: [
            Positioned(
                left: 0,
                bottom: 0,
                top: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Expanded(flex: 1, child: orderNo()),
                      Expanded(
                          flex: 2,
                          child: OrderTab(
                              OrderDetailsOrFollow: OrderDetailsOrFollow)),
                      Expanded(
                          flex: 16,
                          child: OrderDetailsOrFollow
                              ? CurrentOrderDetails()
                              : CurrentOrderShippingDetails()),
                    ],
                  ),
                )),
            showCancelationMenu
                ? Positioned.fill(child: cancelationTicket())
                : Positioned(
                    top: 0,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: null,
                    ),
                  ),
            showCreateTicket
                ? Positioned.fill(child: CreateTicket())
                : Positioned(
                    top: 0,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: null,
                    ),
                  ),
          ],
        ));
  }
}
