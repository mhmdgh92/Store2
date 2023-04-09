import 'package:flutter/material.dart';
import 'package:store2/screens/shared/Objects/Product.dart';
import 'package:store2/screens/shared/appSizedBox.dart';

import '../../../constants.dart';

favItem({Product? product}) {
  if (product == null) product = Product.Default();

  return Padding(
    padding: const EdgeInsets.all(7.0),
    child: Container(
      height: appHeight * 0.15,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: appBorderColor, width: 0.8)),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(Icons.clear_rounded,
                                color: Colors.grey, size: appWidth * 0.04)),
                      )),
                  Expanded(flex: 3, child: appSizedBox(space: 0)),
                  Expanded(
                      flex: 2,
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(product.date,
                              style:
                                  TextStyle(fontSize: appWidth * 0.025)))),
                ],
              )),
          Expanded(
              flex: 7,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: appSizedBox(space: 0),
                  ),
                  Expanded(
                      flex: 2,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(product.title,
                              style:
                                  TextStyle(fontSize: appWidth * 0.033)))),
                  Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          product.oldPrice,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: appWidth * 0.023,
                              decoration: TextDecoration.lineThrough),
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(product.currentPrice,
                            style: TextStyle(fontSize: appWidth * 0.03)),
                      )),
                  Expanded(
                    flex: 1,
                    child: appSizedBox(space: 0),
                  ),
                ],
              )),
          Expanded(
              flex: 3,
              child: Image(
                image: AssetImage('assets/favProductSample.png'),
                fit: BoxFit.fill,
              )),
        ],
      ),
    ),
  );
}
