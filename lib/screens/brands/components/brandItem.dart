import 'package:flutter/material.dart';

import '../../../constants.dart';

brandItem({String imgUrl='assets/brandSample.png'}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: appBorderColor, width: 0.8)),
    child: Align(
        alignment: Alignment.center,
        child: Container(
          width: appWidth,
          height: 100,
          child: Image(
            image: AssetImage('assets/brandSample.png'),
            fit: BoxFit.cover,
          ),
        )),
  );
}

// import 'package:flutter/material.dart';
//
// import '../../../constants.dart';
//
// brandItem({required String imgUrl}) {
//   return Container(
//     decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border.all(color: appBorderColor, width: 0.8)),
//     child: Align(
//         alignment: Alignment.center,
//         child: Container(
//           width: appWidth,
//           height: 100,
//           child: Image(
//             image: AssetImage('assets/brandSample.png'),
//             fit: BoxFit.cover,
//           ),
//         )),
//   );
// }
