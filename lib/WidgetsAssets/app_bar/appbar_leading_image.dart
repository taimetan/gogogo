// import 'package:flutter/material.dart';
// import 'package:gogogo/Utils/size_utils.dart';
// import 'package:gogogo/WidgetsAssets/custom_image_view.dart';

// class AppbarLeadingImage extends StatelessWidget{
//   AppbarLeadingImage({super.key, this.imagePath, this.margin, this.onTap});
//   String? imagePath;
//   EdgeInsetsGeometry? margin;
//   Function? onTap;

//   @override
//   Widget build(BuildContext context){
//     return InkWell(
//       onTap:(){
//         onTap?.call();
//       },
//       child: Padding(padding: margin ?? EdgeInsets.zero,
//       child: CustomImageView(imagePath: imagePath!, height:24.adaptSize,width: 24.adaptSize,
//       fit: BoxFit.contain,),),
//     );
//   }
// }