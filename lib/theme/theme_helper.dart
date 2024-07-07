// import 'package:flutter/material.dart';
// import 'package:gogogo/Utils/size_utils.dart';


// const String _appTheme = "lightCode";
// LightCodeColors get appTheme => ThemeHelper().themeColor();
// ThemeData get theme => ThemeHelper().themeData();

// class ThemeHelper {
//   // A map of custom color themes supported by the app
//   final Map<String, LightCodeColors> supportedCustomColor = {
//     'lightCode': LightCodeColors(),
//   };

//   // A map of color schemes supported by the app
//   final Map<String, ColorScheme> supportedColorScheme = {
//     'lightCode': ColorSchemes.lightCodeColorScheme,
//   };

//   String _currentTheme = 'lightCode'; // Default theme

//   /// Changes the app theme to a new theme.
//   void changeTheme(String newTheme) {
//     assert(supportedCustomColor.containsKey(newTheme),
//         'Theme $newTheme is not supported');
//     _currentTheme = newTheme;
//   }

//   /// Returns the `LightCodeColors` for the current theme.
//   LightCodeColors _getThemeColors() {
//     return supportedCustomColor[_currentTheme] ?? LightCodeColors();
//   }

//   /// Returns the current theme data.
//   ThemeData _getThemeData() {
//     var colorScheme = supportedColorScheme[_currentTheme] ??
//         ColorSchemes.lightCodeColorScheme;

//     return ThemeData(
//       visualDensity: VisualDensity.standard,
//       colorScheme: colorScheme,
//       textTheme: TextThemes.textTheme(colorScheme),
//       scaffoldBackgroundColor: appTheme.whiteA700,
//       elevatedButtonTheme: ElevatedButtonThemeData(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: colorScheme.errorContainer,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16.0),
//           ),
//           visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
//           padding: EdgeInsets.zero,
//         ),
//       ),
//       outlinedButtonTheme: OutlinedButtonThemeData(
//         style: OutlinedButton.styleFrom(
//           backgroundColor: Colors.transparent,
//           side: BorderSide(
//             color: colorScheme.errorContainer,
//             width: 1.0,
//           ),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
//           padding: EdgeInsets.zero,
//         ),
//       ),
//       checkboxTheme: CheckboxThemeData(
//         fillColor: WidgetStateColor.resolveWith((states) {
//           if (states.contains(WidgetState.selected)) {
//             return colorScheme.primary;
//           }
//           return Colors.transparent;
//         }),
//         side: BorderSide(
//           color: appTheme.gray80001,
//           width: 1.0,
//         ),
//         visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
//       ),
//       dividerTheme: DividerThemeData(
//         thickness: 1.0,
//         space: 1.0,
//         color: appTheme.gray20001,
//       ),
//     );
//   }
//   LightCodeColors themeColor() => _getThemeColors();
//   ThemeData themeData() => _getThemeData();
// }
// class TextThemes {
//   static TextTheme textTheme(ColorScheme colorScheme) {
//     return TextTheme(
//       bodyMedium: TextStyle(
//         color: appTheme.gray70001,
//         fontSize: 14.fSize,
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.w400,
//       ),
//       bodySmall: TextStyle(
//         color: appTheme.gray70001,
//         fontSize: 12.fSize,
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.w400,
//       ),
//       displayLarge: TextStyle(
//         color: appTheme.whiteA700,
//         fontSize: 64.fSize,
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.w500,
//       ),
//       displayMedium: TextStyle(
//         color: colorScheme.errorContainer,
//         fontSize: 48.fSize,
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.w600,
//       ),
//       labelLarge: TextStyle(
//         color: appTheme.gray80001,
//         fontSize: 12.fSize,
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.w700,
//       ),
//       labelMedium: TextStyle(
//         color: colorScheme.primary,
//         fontSize: 10.fSize,
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.w500,
//       ),
//       titleLarge: TextStyle(
//         color: appTheme.gray80001,
//         fontSize: 20.fSize,
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.w700,
//       ),
//       titleMedium: TextStyle(
//         color: appTheme.gray80001,
//         fontSize: 16.fSize,
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.w500,
//       ),
//       titleSmall: TextStyle(
//         color: appTheme.gray80001,
//         fontSize: 14.fSize,
//         fontFamily: 'Poppins',
//         fontWeight: FontWeight.w500,
//       ),
//     );
//   }
// }
// class ColorSchemes {
//   static const ColorScheme lightCodeColorScheme = ColorScheme.light(
//     primary: Color(0XFFC9C9C9),
//     primaryContainer: Color(0XFF3A3A3C),
//     errorContainer: Color(0XFF43936C),
//     onError: Color(0XFFC4C4C4),
//     onErrorContainer: Color(0XFF032172),
//     onPrimary: Color(0XFF222222),
//     onPrimaryContainer: Color(0XFFFFFFFF),
//   );
// }
// class LightCodeColors {
//   // White
//   final Color whiteA700 = const Color(0XFFFEFEFE);
//   // Light Blue
//   final Color lightBlue900 = const Color(0XFF03539E);
//   // Teal
//   final Color teal100 = const Color(0XFFB8DBCA);
//   // Green
//   final Color green50 = const Color(0XFFDDFBE7);
//   // Gray
//   final Color gray80001 = const Color(0XFF3C3C3C);
//   final Color gray800 = const Color(0XFF5D4037);
//   final Color gray70001 = const Color(0XFF555555);
//   final Color gray700 = const Color(0XFF636366);
//   final Color gray600 = const Color(0XFF7C7C7C);
//   final Color gray500 = const Color(0XFFA1887F);
//   final Color gray50 = const Color(0XFFF5F5FF);
//   final Color gray200 = const Color(0XFFF0F0F0);
//   final Color gray20001 = const Color(0XFFEFEBE9);
//   // Deep Orange
//   final Color deepOrange900 = const Color(0XFF9F4900);
//   // Blue Gray
//   final Color blueGray900 = const Color(0XFF263238);
//   final Color blueGray60001 = const Color(0XFF456872);
//   final Color blueGray40002 = const Color(0XFF888888);
//   final Color blueGray40001 = const Color(0XFF8A8A8A);
//   final Color blueGray400 = const Color(0XFF868686);
//   final Color blueGray10002 = const Color(0XFFD0D0D0);
//   final Color blueGray10001 = const Color(0XFFD7CCC8);
//   final Color blueGray100 = const Color(0XFFD9D9D9);
//   // Black
//   final Color black900 = const Color(0XFF000000);
//   // Amber
//   final Color amber600 = const Color(0XFFFFB700);
// }
