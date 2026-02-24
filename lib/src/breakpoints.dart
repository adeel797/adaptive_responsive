/// Breakpoint configuration for the package.
///
/// Default values follow Material 3 guidelines but can be customized.
class AdaptiveBreakpoints {
  /// The width at which the layout transitions from mobile to tablet.
  final double tablet;

  /// The width at which the layout transitions from tablet to desktop.
  final double desktop;

  const AdaptiveBreakpoints({
    this.tablet = 600,
    this.desktop = 1024,
  });

  /// The standard Material 3 breakpoints.
  static const AdaptiveBreakpoints standard = AdaptiveBreakpoints();

  /// Current active breakpoints used by the package.
  /// Can be updated to change breakpoints globally.
  static AdaptiveBreakpoints _instance = standard;
  static AdaptiveBreakpoints get instance => _instance;

  static void setCustom(AdaptiveBreakpoints custom) {
    _instance = custom;
  }
}
