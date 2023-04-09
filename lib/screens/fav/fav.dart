import 'package:flutter/material.dart';
import 'package:store2/screens/fav/components/favItem.dart';
import 'package:store2/screens/shared/Objects/Product.dart';
import 'package:store2/screens/shared/appBar.dart';

class Fav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const myAppBar(title: 'مفضلتي'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              favItem(product: Product.Default()),
              favItem(product: Product.Default()),
              favItem(product: Product.Default()),
              favItem(product: Product.Default()),
              favItem(product: Product.Default()),
              favItem(product: Product.Default()),
              favItem(product: Product.Default()),
              favItem(product: Product.Default()),
              favItem(product: Product.Default()),
              favItem(product: Product.Default()),
            ],
          ),
        ),
      ),
    );
  }
}
