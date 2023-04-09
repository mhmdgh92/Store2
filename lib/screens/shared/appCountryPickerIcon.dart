import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class appCountryPickerIcon extends StatelessWidget {
  final String flagCode;
  final Function onChange;

  appCountryPickerIcon({
    required this.flagCode,
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
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
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
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: Container()),
                      Expanded(
                        flex: 15,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                    'icons/flags/png/${flagCode}.png',
                                    package: 'country_icons'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Expanded(flex: 5, child: Container()),
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
