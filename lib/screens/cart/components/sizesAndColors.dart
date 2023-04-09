import 'package:flutter/material.dart';

import '../../../constants.dart';

colorsAndSizes(List<String> sizes, List<Color> colors) {
  final double contWidthScale = 0.05;

  colorItem(Color color) {
    return CircleAvatar(
      backgroundColor: color,
      radius: appHeight * 0.015,
    );
  }

  colorsItems() {
    return SizedBox(
      width: (colors.length * contWidthScale) * appWidth,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final citem = colors[index];
          return colorItem(citem);
        },
      ),
    );
  }

  sizeTxtItem(String size) {
    return Text(size, style: TextStyle(fontSize: appWidth * 0.03));
  }

  sizesItems() {
    return SizedBox(
      width: (sizes.length * contWidthScale) * appWidth,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sizes.length,
        itemBuilder: (context, index) {
          final citem = sizes[index];
          return index > 0
              ? sizeTxtItem(citem.toString())
              : sizeTxtItem(citem.toString() + ',');
        },
      ),
    );
  }

  return Align(
    alignment: Alignment.centerRight,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: appBorderColor, width: 0.4),
              borderRadius: BorderRadius.all(Radius.circular(35.0))),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                sizesItems(),
                colorsItems(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
