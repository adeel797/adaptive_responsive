import 'package:flutter/material.dart';
import 'breakpoints.dart';

/// Returns a value based on screen width.
///
/// It will return [desktop] if the width >= [AdaptiveBreakpoints.desktop],
/// [tablet] if the width >= [AdaptiveBreakpoints.tablet],
/// otherwise it returns [mobile].
T responsiveValue<T>(
  BuildContext context, {
  required T mobile,
  T? tablet,
  T? desktop,
}) {
  final width = MediaQuery.sizeOf(context).width;
  final breakpoints = AdaptiveBreakpoints.instance;

  if (width >= breakpoints.desktop && desktop != null) {
    return desktop;
  } else if (width >= breakpoints.tablet && tablet != null) {
    return tablet;
  }
  return mobile;
}
