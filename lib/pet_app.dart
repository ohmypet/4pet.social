import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PetApp extends StatelessWidget {
  final routers = <String, WidgetBuilder>{
    PetInfoScreen.name: (_) => const PetInfoScreen()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '4Pet social',
      routes: routers,
    );
  }
}

class PetInfoScreen extends StatefulWidget {
  static const name = '/';
  const PetInfoScreen({Key key}) : super(key: key);

  @override
  _PetInfoScreenState createState() => _PetInfoScreenState();
}

class _PetInfoScreenState extends State<PetInfoScreen> {
  final backgroundWidget = Image.asset(
    Assets.background,
    filterQuality: FilterQuality.high,
    fit: BoxFit.contain,
  );

  final preview = Image.asset(
    Assets.preview,
    filterQuality: FilterQuality.high,
    fit: BoxFit.cover,
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(backgroundWidget.image, context);
    precacheImage(preview.image, context);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final ratio = width / 1440;
    final left = min<double>(180 * ratio, 180);
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.center,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            backgroundWidget,
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20, left: left),
                child: Align(
                  alignment: Alignment.centerLeft,
                  widthFactor: 0.125,
                  child: AspectRatio(
                    aspectRatio: 0.5,
                    child: preview,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Assets {
  static const background = 'assets/background.png';
  static const intro = 'assets/intro.png';
  static const preview = 'assets/preview.png';
}
