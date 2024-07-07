// import 'package:flutter/material.dart';
// import 'package:gogogo/Utils/size_utils.dart';
// import 'package:gogogo/theme/theme_helper.dart';


// extension on TextStyle {
//   TextStyle get poppins {
//     return copyWith(
//       fontFamily: 'Poppins',
//     );
//   }
// }

// class CustomTextStyles {
//   // Body text style
//   static TextStyle get bodyMediumBluegray40001 =>
//       theme.textTheme.bodyMedium!.copyWith(
//         color: appTheme.blueGray40001,
//       );

//   static TextStyle get bodyMediumGray80001 =>
//       theme.textTheme.bodyMedium!.copyWith(
//         color: appTheme.gray80001,
//       );

//   static TextStyle get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
//         fontSize: 10.fSize,
//       );

//   static TextStyle get bodySmallGray600 =>
//       theme.textTheme.bodySmall!.copyWith(
//         color: appTheme.gray600,
//       );

//   static TextStyle get bodySmallGray600_1 =>
//       theme.textTheme.bodySmall!.copyWith(
//         color: appTheme.gray600,
//       );

//   static TextStyle get bodySmallGray80001 =>
//       theme.textTheme.bodySmall!.copyWith(
//         color: appTheme.gray80001,
//       );

//   static TextStyle get bodySmallOnErrorContainer =>
//       theme.textTheme.bodySmall!.copyWith(
//         color: theme.colorScheme.onErrorContainer,
//       );

//   static TextStyle get bodySmallPrimary =>
//       theme.textTheme.bodySmall!.copyWith(
//         color: theme.colorScheme.primary,
//       );

//   static TextStyle get bodySmallWhiteA700 =>
//       theme.textTheme.bodySmall!.copyWith(
//         color: appTheme.whiteA700,
//       );

//   static TextStyle get bodySmallWhiteA70010 =>
//       theme.textTheme.bodySmall!.copyWith(
//         color: appTheme.whiteA700,
//         fontSize: 10.fSize,
//       );

//   // Label text style
//   static TextStyle get labelLargeErrorContainer =>
//       theme.textTheme.labelLarge!.copyWith(
//         color: theme.colorScheme.errorContainer,
//         fontWeight: FontWeight.w600,
//       );

//   static TextStyle get labelLargeErrorContainerMedium =>
//       theme.textTheme.labelLarge!.copyWith(
//         color: theme.colorScheme.errorContainer,
//         fontWeight: FontWeight.w500,
//       );

//   static TextStyle get labelLargeGray70001 =>
//       theme.textTheme.labelLarge!.copyWith(
//         color: appTheme.gray70001,
//       );

//   static TextStyle get labelLargeMedium =>
//       theme.textTheme.labelLarge!.copyWith(
//         fontWeight: FontWeight.w500,
//       );

//   static TextStyle get labelLargeWhiteA700 =>
//       theme.textTheme.labelLarge!.copyWith(
//         color: appTheme.whiteA700,
//         fontWeight: FontWeight.w500,
//       );

//   static TextStyle get labelLargeWhiteA700SemiBold =>
//       theme.textTheme.labelLarge!.copyWith(
//         color: appTheme.whiteA700,
//         fontWeight: FontWeight.w600,
//       );

//   static TextStyle get labelMediumGray800 =>
//       theme.textTheme.labelMedium!.copyWith(
//         color: appTheme.gray800,
//       );

//   // Title text style
//   static TextStyle get titleMedium18 =>
//       theme.textTheme.titleMedium!.copyWith(
//         fontSize: 18.fSize,
//       );

//   static TextStyle get titleMediumBlack900 =>
//       theme.textTheme.titleMedium!.copyWith(
//         color: appTheme.black900,
//       );

//   static TextStyle get titleMediumBluegray400 =>
//       theme.textTheme.titleMedium!.copyWith(
//         color: appTheme.blueGray400,
//       );

//   static TextStyle get titleMediumBold =>
//       theme.textTheme.titleMedium!.copyWith(
//         fontWeight: FontWeight.w700,
//       );

//   static TextStyle get titleMediumBold18 =>
//       theme.textTheme.titleMedium!.copyWith(
//         fontSize: 18.fSize,
//         fontWeight: FontWeight.w700,
//       );

//   static TextStyle get titleMediumGray700 =>
//       theme.textTheme.titleMedium!.copyWith(
//         color: appTheme.gray700,
//       );

//   static TextStyle get titleMediumGray70001 =>
//       theme.textTheme.titleMedium!.copyWith(
//         color: appTheme.gray70001,
//       );

//   static TextStyle get titleMediumGray800 =>
//       theme.textTheme.titleMedium!.copyWith(
//         color: appTheme.gray800,
//       );

//   static TextStyle get titleMediumPrimary =>
//       theme.textTheme.titleMedium!.copyWith(
//         color: theme.colorScheme.primary,
//       );

//   static TextStyle get titleMediumWhiteA700 =>
//       theme.textTheme.titleMedium!.copyWith(
//         color: appTheme.whiteA700,
//       );

//   static TextStyle get titleSmallBlack900 =>
//       theme.textTheme.titleSmall!.copyWith(
//         color: appTheme.black900,
//       );

//   static TextStyle get titleSmallBlack900_1 =>
//       theme.textTheme.titleSmall!.copyWith(
//         color: appTheme.black900,
//       );

//   static TextStyle get titleSmallErrorContainer =>
//       theme.textTheme.titleSmall!.copyWith(
//         color: theme.colorScheme.errorContainer,
//       );

//   static TextStyle get titleSmallGray70001 =>
//       theme.textTheme.titleSmall!.copyWith(
//         color: appTheme.gray70001,
//       );

//   static TextStyle get titleSmallGray70001_1 =>
//       theme.textTheme.titleSmall!.copyWith(
//         color: appTheme.gray70001,
//       );

//   static TextStyle get titleSmallGray800 =>
//       theme.textTheme.titleSmall!.copyWith(
//         color: appTheme.gray800,
//       );

//   static TextStyle get titleSmallGray800_1 =>
//       theme.textTheme.titleSmall!.copyWith(
//         color: appTheme.gray800,
//       );

//   static TextStyle get titleSmallPrimaryContainer =>
//       theme.textTheme.titleSmall!.copyWith(
//         color: theme.colorScheme.primaryContainer,
//       );

//   static TextStyle get titleSmallSemiBold =>
//       theme.textTheme.titleSmall!.copyWith(
//         fontWeight: FontWeight.w600,
//       );

//   static TextStyle get titleSmallWhiteA700 =>
//       theme.textTheme.titleSmall!.copyWith(
//         color: appTheme.whiteA700,
//       );
// }
