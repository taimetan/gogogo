// import 'package:flutter/material.dart';


// // These are the Viewport values of your Figma Design.
// // These are used in the code as a reference to create your UI Responsively.
// const double FIGMA_DESIGN_WIDTH = 375;
// const double FIGMA_DESIGN_HEIGHT = 812;
// const double FIGMA_DESIGN_STATUS_BAR = 0;

// extension ResponsiveExtension on num {
//   double get _width => SizeUtils.width;
//   double get _height => SizeUtils.height;

//   /// Scales a value horizontally based on the design width.
//   double get h => (this * _width) / FIGMA_DESIGN_WIDTH;

//   /// Scales a value vertically based on the design height (excluding status bar).
//   double get v => (this * _height) / (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR);

//   /// Adapts the size based on the current screen aspect ratio.
//   /// Returns the smaller value between scaled width and scaled height.
//   double get adaptSize {
//     var height = v;
//     var width = h;
//     return height < width ? height.toDoubleValue() : width.toDoubleValue();
//   }

//   /// Scales a value for font size based on the adapted size.
//   double get fSize => adaptSize;
// }
// extension FormatExtension on double {
//   /// Converts the double value to a double with a specified number of decimal places.
//   double toDoubleValue({int fractionDigits = 2}) {
//     return double.parse(toStringAsFixed(fractionDigits));
//   }

//   /// Checks if the value is non-zero and returns the value itself, otherwise returns the provided default value.
//   double isNonZero({num defaultValue = 0.0}) {
//     return this > 0 ? this : defaultValue.toDouble();
//   }
// }

// enum DeviceType { mobile, tablet, desktop }

// typedef ResponsiveBuild = Widget Function(
//   BuildContext context,
//   Orientation orientation,
//   DeviceType deviceType,
// );

// class Sizer extends StatelessWidget {
//   const Sizer({super.key, required this.builder});

//   /// The builder function that builds the widget based on context, orientation, and device type.
//   final ResponsiveBuild builder;

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return OrientationBuilder(
//           builder: (context, orientation) {
//             SizeUtils.setScreenSize(constraints, orientation);
//             return builder(context, orientation, SizeUtils.deviceType);
//           },
//         );
//       },
//     );
//   }
// }
// class SizeUtils {
//   /// Device's BoxConstraints
//   static late BoxConstraints boxConstraints;

//   /// Device's Orientation
//   static late Orientation orientation;

//   /// Type of Device (mobile, tablet, desktop - needs implementation)
//   static late DeviceType deviceType;

//   /// Device's Height
//   static late double height;

//   /// Device's Width
//   static late double width;

//   /// Sets the screen size based on the provided constraints and orientation.
//   static void setScreenSize(BoxConstraints constraints, Orientation currentOrientation) {
//     boxConstraints = constraints;
//     orientation = currentOrientation;

//     if (currentOrientation == Orientation.portrait) {
//       width = constraints.maxWidth.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
//       height = constraints.maxHeight.isNonZero();
//     } else {
//       width = constraints.maxHeight.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
//       height = constraints.maxWidth.isNonZero();
//     }

//     // Implement logic to determine deviceType based on screen size or other criteria
//     // For example, you could use a media query to check for specific breakpoints
//     deviceType = DeviceType.mobile; // Placeholder, replace with actual logic
//   }
// }
