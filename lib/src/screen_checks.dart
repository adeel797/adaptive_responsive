import 'package:flutter/material.dart';
import 'breakpoints.dart';

/// Checks if the current screen size is mobile.
bool isMobile(BuildContext context) =>
    MediaQuery.sizeOf(context).width < AdaptiveBreakpoints.instance.tablet;

/// Checks if the current screen size is tablet.
bool isTablet(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  final breakpoints = AdaptiveBreakpoints.instance;
  return width >= breakpoints.tablet && width < breakpoints.desktop;
}

/// Checks if the current screen size is desktop.
bool isDesktop(BuildContext context) =>
    MediaQuery.sizeOf(context).width >= AdaptiveBreakpoints.instance.desktop;
