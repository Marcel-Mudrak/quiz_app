import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.align, this.textAlign, this.weight, this.textColor,
      this.outputText, this.size,
      {super.key});

  const StyledText.whiteHeader(this.outputText, this.size, {super.key})
      : textColor = const Color.fromARGB(255, 252, 252, 255),
        weight = FontWeight.bold,
        textAlign = TextAlign.center,
        align = Alignment.center;

  const StyledText.white(this.outputText, this.size, {super.key})
      : textColor = const Color.fromARGB(255, 252, 252, 255),
        weight = FontWeight.normal,
        textAlign = TextAlign.center,
        align = Alignment.center;

  const StyledText.whiteLeft(this.outputText, this.size, {super.key})
      : textColor = const Color.fromARGB(255, 252, 252, 255),
        weight = FontWeight.normal,
        textAlign = TextAlign.left,
        align = Alignment.centerLeft;

  const StyledText.turquoise(this.textAlign, this.outputText, this.size,
      {super.key})
      : textColor = const Color.fromARGB(255, 76, 224, 210),
        weight = FontWeight.normal,
        align = Alignment.centerLeft;

  const StyledText.lightBlue(this.textAlign, this.outputText, this.size,
      {super.key})
      : textColor = const Color.fromARGB(255, 132, 202, 231),
        weight = FontWeight.normal,
        align = Alignment.centerLeft;

  final Color textColor;
  final String outputText;
  final double size;
  final FontWeight weight;
  final TextAlign textAlign;

  final Alignment align;

  @override
  Widget build(context) {
    return Align(
      alignment: align,
      child: Text(
        outputText,
        style: GoogleFonts.lato(
          color: textColor,
          fontSize: size,
          fontWeight: weight,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
