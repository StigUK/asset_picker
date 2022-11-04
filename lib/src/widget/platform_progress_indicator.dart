// Copyright 2019 The FlutterCandies author. All rights reserved.
// Use of this source code is governed by an Apache license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class PlatformProgressIndicator extends StatelessWidget {
  const PlatformProgressIndicator({
    Key? key,
    this.size = 48.0,
  }) : super(key: key);

  final double size;

  static const Color colorAccent = Color(0xff1ED2D7);
  static const Color colorMainBlue = Color(0xff124B87);
  static const Color colorLogoYellow = Color(0xffFFBE0F);
  static const Color colorLogoOrange = Color(0xffFA550F);

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: const LoadingIndicator(
        indicatorType: Indicator.lineSpinFadeLoader,
        colors: <Color>[
          colorMainBlue,
          colorLogoYellow,
          colorAccent,
          colorLogoOrange,
        ],
      ),
    );
  }
}
