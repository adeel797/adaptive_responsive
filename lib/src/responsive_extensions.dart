import 'package:flutter/material.dart';
import 'responsive_value.dart';

extension ResponsiveExtensions on BuildContext {
  // Screen type
  bool get isMobile =>
      responsiveValue(this, mobile: true, tablet: false, desktop: false);

  bool get isTablet =>
      responsiveValue(this, mobile: false, tablet: true, desktop: false);

  bool get isDesktop =>
      responsiveValue(this, mobile: false, tablet: false, desktop: true);

  // Orientation
  bool get isPortrait => MediaQuery.orientationOf(this) == Orientation.portrait;

  bool get isLandscape =>
      MediaQuery.orientationOf(this) == Orientation.landscape;

  // Dimensions
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;

  // Safe area
  double get safeTop => MediaQuery.paddingOf(this).top;
  double get safeBottom => MediaQuery.paddingOf(this).bottom;

  // Device info
  double get devicePixelRatio => MediaQuery.devicePixelRatioOf(this);

  double get textScaleFactor => MediaQuery.textScaleFactorOf(this);

  TargetPlatform get platform => Theme.of(this).platform;

  // Responsive helper
  T responsive<T>({
    required T mobile,
    T? tablet,
    T? desktop,
  }) =>
      responsiveValue(
        this,
        mobile: mobile,
        tablet: tablet,
        desktop: desktop,
      );

  // Adaptive spacing
  double responsiveSize({
    double mobile = 16,
    double? tablet,
    double? desktop,
  }) =>
      responsive(
        mobile: mobile,
        tablet: tablet,
        desktop: desktop,
      );
}
