// import 'package:flutter/material.dart';
// import 'package:gogogo/Utils/size_utils.dart';
// import 'package:gogogo/theme/theme_helper.dart';

// enum Style { bgShadow }

// // ignore: must_be_immutable
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({
//     super.key,
//     this.height,
//     this.styleType,
//     this.leadingWidth,
//     this.leading,
//     this.title,
//     this.centerTitle,
//     this.actions,
//   });

//   final double? height;
//   final Style? styleType;
//   final double? leadingWidth;
//   final Widget? leading;
//   final Widget? title;
//   final bool? centerTitle;
//   final List<Widget>? actions;

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: 0,
//       toolbarHeight: height ?? 52.v,
//       automaticallyImplyLeading: false,
//       backgroundColor: Colors.transparent,
//       flexibleSpace: _getStyle(),
//       leadingWidth: leadingWidth ?? 0,
//       leading: leading,
//       title: title,
//       titleSpacing: 0,
//       centerTitle: centerTitle ?? false,
//       actions: actions,
//     );
//   }

//   @override
//   Size get preferredSize => Size(SizeUtils.width, height ?? 52.v);

//   Widget _getStyle() {
//     switch (styleType) {
//       case Style.bgShadow:
//         return Container(
//           height: 52.v,
//           width: 374.h,
//           decoration: BoxDecoration(
//             color: appTheme.whiteA700,
//             boxShadow: [
//               BoxShadow(
//                 color: appTheme.black900.withOpacity(0.15),
//                 spreadRadius: 2.h,
//                 blurRadius: 2.h,
//                 offset: const Offset(0, 0),
//               ),
//             ],
//           ),
//         );
//       default:
//         return Container();
//     }
//   }
// }
