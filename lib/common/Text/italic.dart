import 'package:flutter/cupertino.dart';

class Italic extends StatelessWidget {
  final Widget child;

  const Italic({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(inherit: true, fontStyle: FontStyle.italic),
      child: child,
    );
  }
}
