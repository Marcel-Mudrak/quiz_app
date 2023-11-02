import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.weight, this.textColor, this.outputText, this.size,
      {super.key});

  const StyledText.whiteHeader(this.outputText, this.size, {super.key})
      : textColor = const Color.fromARGB(255, 252, 252, 255),
        weight = FontWeight.bold;

  const StyledText.white(this.outputText, this.size, {super.key})
      : textColor = const Color.fromARGB(255, 252, 252, 255),
        weight = FontWeight.normal;

  final Color textColor;
  final String outputText;
  final double size;
  final FontWeight weight;

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: GoogleFonts.lato(
        color: textColor,
        fontSize: size,
        fontWeight: weight,
      ),
      textAlign: TextAlign.center,
    );
  }
}
