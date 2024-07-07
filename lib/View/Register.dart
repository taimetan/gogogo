import 'package:flutter/material.dart';
import 'package:gogogo/Utils/size_utils.dart';
import 'package:gogogo/WidgetsAssets/custom_image_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFEFE),
      body: SafeArea(
        child: SingleChildScrollView( // Wrap content with SingleChildScrollView
          padding: const EdgeInsets.fromLTRB(20.0, 7.0, 20.0, 8.0),
          child: Column(
            children: [
              Container(
  decoration: BoxDecoration(
    color: Color(0xFFFEFEFE),
  ),
  child: Container(
    padding: EdgeInsets.fromLTRB(20, 80, 20, 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 183.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [            
                Container(
                  child: Image( image: AssetImage('assets/images/logoBicycle.png')
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Name',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        height: 1.5,
                                        color: Color(0xFF3C3C3C),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xFFD0D0D0)),
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(15, 13, 15, 13),
                                    child: 
                                    Text(
                                      'Input your name',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        height: 1.4,
                                        color: Color(0xFF8A8A8A),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'No. Handphone',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      height: 1.5,
                                      color: Color(0xFF3C3C3C),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xFFD0D0D0)),
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(15, 13, 15, 13),
                                  child: 
                                  Text(
                                    'Input your No. Handphone',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      height: 1.4,
                                      color: Color(0xFF8A8A8A),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          height: 1.5,
                          color: Color(0xFF7C7C7C),
                        ),
                        children: [
                          TextSpan(
                            text: 'By tapping "Register" you agree to our ',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 1.3,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms of Use',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 1.3,
                              color: Color(0xFF032172),
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 1.3,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              height: 1.3,
                              color: Color(0xFF032172),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
                Container(
                width: double.infinity, // Spans the entire available width
                margin: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
                decoration: BoxDecoration(
                  color: Color(0xFFCACACA),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: TextButton(
                  onPressed: () {
                    // Handle registration logic
                  },
                  child: Text(
                    'Register',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      height: 1.4,
                      color: Color(0xFFFEFEFE),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5, 0, 0, 45.5),
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.getFont(
                'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                height: 1.4,
                color: Color(0xFF000000),
              ),
              children: [
                TextSpan(
                  text: 'Have an account?',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.3,
                    color: Color(0xFF555555),
                  ),
                ),
                TextSpan(
                  text: ' ',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.3,
                  ),
                ),
                TextSpan(
                  text: 'Login',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.3,
                    color: Color(0xFF5D4037),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
          width: 0,
          height: 0,
          child: 
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF000000),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Container(
              width: 0,
              height: 0,
            ),
          ),
        ),
      ],
    ),
  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}