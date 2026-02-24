import 'package:flutter/material.dart';
import 'responsive_extensions.dart';

class AppSpacing {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;
  static const double xxxl = 64;

  static EdgeInsets screenPadding(BuildContext context) => EdgeInsets.symmetric(
        horizontal: context.responsiveSize(mobile: 16, tablet: 24, desktop: 32),
        vertical: context.responsiveSize(mobile: 16, tablet: 24, desktop: 32),
      );
}
