import 'package:flutter/material.dart';
import 'package:social_4pet/pet_colors.dart';

class H6 extends StatelessWidget {
  final String text;

  const H6(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.headline6 ?? TextStyle();

    return Text(
      text,
      style: textStyle.merge(DefaultTextStyle.of(context).style).merge(
            TextStyle(
              fontSize: 12,
              fontFamily: 'Roboto',
              height: 1.4,
            ),
          ),
    );
  }
}
