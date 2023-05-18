import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constant/colors.dart';

class TextWidget extends StatelessWidget {
  String text;
  double? size;
  Color color;
  FontWeight? fontWeight;
  TextWidget(
      {required this.text, required this.color, this.size, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
