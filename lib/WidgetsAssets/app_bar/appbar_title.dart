// import 'package:flutter/material.dart';
// import 'package:gogogo/theme/theme_helper.dart';


// class AppbarTitle extends StatelessWidget {
//   final String text;
//   final EdgeInsetsGeometry? margin;
//   final VoidCallback? onTap; // Use VoidCallback instead of Function

//   const AppbarTitle({
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
//           style: Theme.of(context).textTheme.titleMedium!.copyWith(
//             color: appTheme.gray80001,
//           ),
//         ),
//       ),
//     );
//   }
// }
