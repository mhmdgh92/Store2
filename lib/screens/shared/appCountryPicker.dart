import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class appCountryPicker extends StatelessWidget {
  final String countryName;
  final String flagCode;
  final double padding;
  final double height;
  final double width;
  final Function onChange;

  appCountryPicker({
    required this.countryName,
    required this.flagCode,
    this.padding = 4.5,
    this.height = 0.065,
    this.width = 0.77,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCountryPicker(
          context: context,
          // optional. Shows phone code before the country name.
          onSelect: (Country country) {
            this.onChange(country);
            // print('onSelect');
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: SizedBox(
          height: appHeight * height,
          width: appWidth * width,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: appBorderColor, width: 0.50),
              borderRadius: BorderRadius.circular(35),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 13,
                        child: Container(
                          child: Text(
                            countryName,
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ),
                      Expanded(flex: 1, child: Container()),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(flex: 2,child: Container()),
                      Expanded(
                        flex:15,
                        child: Container(
                          height: appHeight*height,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('icons/flags/png/${flagCode}.png',
                                    package: 'country_icons'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Expanded(flex: 5,child: Container()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
