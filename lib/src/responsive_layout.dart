import 'package:flutter/material.dart';
import 'screen_checks.dart';

/// A widget that builds different layouts based on the screen size.
class ResponsiveLayout extends StatelessWidget {
  /// The layout to build on mobile screens.
  final Widget mobile;

  /// The layout to build on tablet screens.
  /// If null, [mobile] will be used.
  final Widget? tablet;

  /// The layout to build on desktop screens.
  /// If null, [tablet] or [mobile] will be used.
  final Widget? desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    if (isDesktop(context)) {
      return desktop ?? tablet ?? mobile;
    } else if (isTablet(context)) {
      return tablet ?? mobile;
    } else {
      return mobile;
    }
  }
}
