import 'package:flutter/material.dart';

appSwitch() {
  bool active = true;

  return Switch(
    value: active,
    onChanged: (value) {
      active = false;
    },
  );
}
