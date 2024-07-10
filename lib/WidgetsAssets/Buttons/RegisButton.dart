import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterButton extends StatefulWidget {
  final Function onPressed; // Callback function for button press

  const RegisterButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  State<RegisterButton> createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
  Color _backgroundColor = const Color(0xFFCACACA); // Initial background color

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Spans the entire available width
      margin: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
      decoration: BoxDecoration(
        color: _backgroundColor, // Use the dynamic background color
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextButton(
        onPressed: () {
          // Handle button press (potentially update background color)
          widget.onPressed();

          // Optionally change background color on press
          // setState(() {
          //   _backgroundColor = Colors.blue; // Example color change
          // });
        },
        child: Text(
          'Register',
          style: GoogleFonts.getFont(
            'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 14,
            height: 1.4,
            color: const Color(0xFFFEFEFE), // White text
          ),
        ),
      ),
    );
  }
}
