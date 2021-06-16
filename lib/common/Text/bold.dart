import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_4pet/pet_colors.dart';

class Bold extends StatelessWidget {
  final Widget child;

  const Bold({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(inherit: true, fontWeight: FontWeight.bold, color: PetColors.black8),
      child: child,
    );
  }
}
