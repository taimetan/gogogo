import 'package:flutter/material.dart';
import 'package:gogogo/Utils/size_utils.dart';
import 'package:gogogo/View/LogReg/Regis.dart';

import 'package:gogogo/WidgetsAssets/custom_image_view.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoSplashScreen extends StatelessWidget {
  const LogoSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToRegisterScreen(context),
            child: Image(image: AssetImage('assets/images/logoBicycle.png'),),
    );
  }

  void _navigateToRegisterScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Regis()),
    );
  }
}
