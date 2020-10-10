import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_4pet/pet_colors.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Gradient gradient;
  final EdgeInsets padding;
  final TextStyle style;
  final bool isUpperCase;
  final double rounded;

  const GradientButton(
    this.text, {
    Key key,
    this.onTap,
    this.gradient = PetColors.gradient_button,
    this.padding = const EdgeInsets.symmetric(vertical: 20),
    this.style = GradientButton.blackWhite13,
    this.isUpperCase = true,
    this.rounded = 6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(rounded),
          gradient: gradient,
        ),
        child: Center(
          child: AutoSizeText(
            isUpperCase ? text.toUpperCase() : text,
            style: style,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  static const blackWhite13 = TextStyle(
    fontSize: 13,
    letterSpacing: 0.04,
    fontWeight: FontWeight.w900,
    height: 1,
    color: PetColors.white,
    fontFamily: 'Roboto',
  );
}
