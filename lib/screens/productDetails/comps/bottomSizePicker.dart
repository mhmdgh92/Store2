import 'package:flutter/material.dart';
import 'package:store2/screens/shared/appListItems.dart';

import '../../../constants.dart';

class bottomSizePicker extends StatelessWidget {

  final Function onClose;
  final bool showBottomMenu;

  const bottomSizePicker(
      {Key? key,
        required this.onClose,
        this.showBottomMenu = false,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!showBottomMenu) {
      return Positioned(
        top: 0,
        child: Align(
          alignment: Alignment.topCenter,
          child: null,
        ),
      );
    }else {
      return (Positioned.fill(
        child: Container(
          color: (Colors.black.withOpacity(0.5)),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                height: appHeight * 0.3,
                width: appWidth,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: appColor1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 23, left: 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                child: Text("رجوع",
                                    style:
                                    TextStyle(fontSize: 16, color: appColor3)),
                                onTap: ()=>onClose(),
                              ),
                              GestureDetector(
                                child: Text("اختر الحجم",
                                    style:
                                    TextStyle(fontSize: 16, color: appColor3)),
                                onTap: ()=>onClose(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: appListItems(
                        onChoose: () {},
                        data: ['كبير', 'متوسط', 'صغير'],
                        onBack: () {},
                      ),
                    )
                  ],
                ),
              )),
        ),
      ));
    }
  }
}