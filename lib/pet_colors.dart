import 'package:flutter/widgets.dart';

abstract class PetColors {
  PetColors._();

  static const transparent = Color.fromARGB(0, 0, 0, 0);

  static const black = Color.fromARGB(255, 0, 0, 0);
  static const black8 = Color.fromARGB(25 * 8, 0, 0, 0);
  static const black6 = Color.fromARGB(25 * 6, 0, 0, 0);
  static const black5 = Color.fromARGB(25 * 5, 0, 0, 0);
  static const black4 = Color.fromARGB(25 * 4, 0, 0, 0);
  static const black2 = Color.fromARGB(51, 0, 0, 0);
  static const black1 = Color.fromARGB(25, 0, 0, 0);
  static const black05 = Color.fromARGB(12, 0, 0, 0);

  static const primary = Color.fromARGB(255, 255, 201, 60);
  static const secondary = Color.fromARGB(255, 237, 73, 86);

  static const white = Color.fromARGB(255, 255, 255, 255);
  static const white8 = Color.fromRGBO(255, 255, 255, 0.8);
  static const white6 = Color.fromRGBO(255, 255, 255, 0.6);
  static const white1 = Color.fromARGB(25, 255, 255, 255);
  static const white05 = Color.fromARGB(12, 255, 255, 255);

  static const error = Color.fromARGB(255, 212, 56, 13);
  static const success = Color.fromARGB(255, 124, 179, 5);

  static const facebook_color = Color.fromRGBO(59, 89, 152, 1);

  static const like_color_1 = Color.fromARGB(255, 237, 73, 86);
  static const like_color_2 = Color.fromARGB(255, 255, 201, 60);

  static const gradient_text = LinearGradient(
    colors: [
      PetColors.like_color_1,
      PetColors.like_color_2,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.5, 1],
    tileMode: TileMode.repeated,
  );

  static const gradient_icon = LinearGradient(
    colors: [
      PetColors.secondary,
      PetColors.primary,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.5, 1],
    tileMode: TileMode.repeated,
  );

  static const gradient_button = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(237, 73, 86, 1),
      Color.fromRGBO(255, 201, 60, 1),
    ],
  );
}
