import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constant/colors.dart';

class TextWidget extends StatelessWidget {
  String text;
  double? size;
  Color color;
  FontWeight? fontWeight;
  TextAlign? align;
  TextWidget(
      {required this.text,
      required this.color,
      this.size,
      this.fontWeight,
      this.align});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: align,
        style: GoogleFonts.poppins(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
