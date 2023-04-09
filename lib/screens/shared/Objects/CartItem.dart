import 'package:flutter/material.dart';

import 'Product.dart';

class CartItem {
  late Product product;
  late int quantity;
  late List<String> sizes=<String>[];
  late List<Color> colors=<Color>[];

  CartItem(Product product, int quantity, List<String> sizes,List<Color> colors) {
    this.product = product;
    this.quantity = quantity;
    this.sizes = sizes;
    this.colors = colors;
  }

  CartItem.Default() {
    product = Product.Default();
    quantity = 1;
    sizes.add('XL');
    sizes.add('M');
    colors.add(Colors.red);
    colors.add(Colors.blueAccent);
  }
}
