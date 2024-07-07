// import 'package:flutter/material.dart';
// import 'package:gogogo/theme/theme_helper.dart';


// // Consider removing unnecessary `ignore_for_file` directives if possible
// class AppbarSubtitle extends StatelessWidget {
//   final String text;
//   final EdgeInsetsGeometry? margin;
//   final VoidCallback? onTap; // Use VoidCallback for functions without arguments

//   const AppbarSubtitle({
//     super.key,
//     required this.text,
//     this.margin,
//     this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: margin ?? EdgeInsets.zero,
//         child: Text(
//           text,
//           style: theme.textTheme.titleSmall!.copyWith(
//             color: appTheme.gray80001,
//           ),
//         ),
//       ),
//     );
//   }
// }