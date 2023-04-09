import 'package:flutter/material.dart';
import 'package:store2/constants.dart';
import 'package:store2/screens/shared/appSizedBox.dart';

import 'appTextInput.dart';

class appListItems extends StatefulWidget {
  final List<String> data;
  final Function onChoose;
  final Function onBack;

  const appListItems(
      {Key? key,
      required this.data,
      required this.onChoose,
      required this.onBack})
      : super(key: key);

  @override
  State<appListItems> createState() => _appListItemsState();

  Widget item(int ItemNu, String title) {
    return GestureDetector(
      onTap: ()=> {

      },
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.15,
                )),
          ),
          width: appWidth,
          height: appHeight * 0.06,
          child: Align(alignment: Alignment.center, child: Text(title)),
        ),
      ),
    );
  }
}

class _appListItemsState extends State<appListItems> {


  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        flex: 1,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: appSizedBox(space: 0),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  // Let the ListView know how many items it needs to build.
                  itemCount: widget.data.length,
                  // Provide a builder function. This is where the magic happens.
                  // Convert each item into a widget based on the type of item it is.
                  itemBuilder: (context, index) {
                    final citem = widget.data[index];
                    return widget.item(index,citem.toString());
                  },
                ),
              ),
              flex: 20,
            )
          ],
        ),
      ),
    ]);
  }
}
