// import 'package:flutter/material.dart';
// import 'package:gogogo/Utils/size_utils.dart';
// import 'package:gogogo/theme/theme_helper.dart';

// class CustomButtonStyles {
//   // Filled button styles

//   static ButtonStyle get fillErrorContainerTL8 => ElevatedButton.styleFrom(
//         backgroundColor: theme.colorScheme.errorContainer,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.h),
//         ),
//       );

//   static ButtonStyle get fillGray => ElevatedButton.styleFrom(
//         backgroundColor: appTheme.gray800,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16.h),
//         ),
//       );

//   static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
//         backgroundColor: theme.colorScheme.primary,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16.h),
//         ),
//       );

//   // Outline button style

//   static ButtonStyle get outlineGray => OutlinedButton.styleFrom(
//         backgroundColor: Colors.transparent,
//         side: BorderSide(
//           color: appTheme.gray200,
//           width: 1.0,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.horizontal(
//             left: Radius.circular(8.h),
//           ),
//         ),
//       );

//   // Text button style

//   static ButtonStyle get none => ButtonStyle(
//         backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
//         elevation: WidgetStateProperty.all<double>(0.0),
//         side: WidgetStateProperty.all<BorderSide>(
//           const BorderSide(color: Colors.transparent),
//         ),
//       );
// }