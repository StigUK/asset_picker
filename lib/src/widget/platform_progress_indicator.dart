// Copyright 2019 The FlutterCandies author. All rights reserved.
// Use of this source code is governed by an Apache license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class PlatformProgressIndicator extends StatelessWidget {
  const PlatformProgressIndicator({
    super.key,
    this.strokeWidth = 4.0,
    this.radius = 10.0,
    this.size = 48.0,
  });

  final double strokeWidth;
  final double radius;
  final double size;

  bool get isAppleOS => switch (defaultTargetPlatform) {
    TargetPlatform.iOS || TargetPlatform.macOS => true,
    _ => false,
  };
  static const Color colorAccent = Color(0xff1ED2D7);
  static const Color colorMainBlue = Color(0xff124B87);
  static const Color colorLogoYellow = Color(0xffFFBE0F);
  static const Color colorLogoOrange = Color(0xffFA550F);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.square(size),
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
