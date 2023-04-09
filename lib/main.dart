import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store2/screens/wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Wrapper());
  }
}
