# Adaptive Responsive

A production-ready Flutter package for building fully responsive and adaptive layouts with ease. Support for customizable breakpoints, responsive values, layout builders, and context extensions.

## Features

- 📱 **Customizable Breakpoints**: Define your own screen size thresholds.
- 🏗️ **ResponsiveLayout**: Easily switch between mobile, tablet, and desktop widgets.
- 🔢 **ResponsiveValue**: Get different values (sizes, colors, etc.) based on screen size.
- 🛠️ **Context Extensions**: Check screen type and metrics directly from `context`.
- 📐 **Screen Metrics**: Quick access to width, height, and safe areas.
- 📏 **Adaptive Spacing**: Consistent spacing across different devices.

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  adaptive_responsive: ^1.0.0
```

## Usage

### 1. Simple Screen Checks

```dart
if (context.isMobile) {
  // Build mobile UI
}
```

### 2. Responsive Layout

```dart
ResponsiveLayout(
  mobile: MobileWidget(),
  tablet: TabletWidget(), // Optional
  desktop: DesktopWidget(), // Optional
)
```

### 3. Responsive Value

```dart
double padding = context.responsive<double>(
  mobile: 10,
  tablet: 20,
  desktop: 30,
);
```

### 4. Custom Breakpoints

Initialize custom breakpoints at the start of your app:

```dart
void main() {
  AdaptiveBreakpoints.setCustom(
    AdaptiveBreakpoints(
      mobile: 480,
      tablet: 768,
      desktop: 1200,
    ),
  );
  runApp(MyApp());
}
```

## Use Cases

- **Dashboard Applications**: Show a sidebar on desktop and a drawer on mobile.
- **Content-Heavy Apps**: Adjust text size and grid column counts based on width.
- **Cross-Platform Development**: Ensure a consistent experience across iOS, Android, and Web.

## Testing

This package is designed to be easily testable with standard Flutter widget tests. Use `MediaQuery` to mock different screen sizes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
