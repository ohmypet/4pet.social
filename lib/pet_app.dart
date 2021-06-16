import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_4pet/gradient_button.dart';
import 'package:social_4pet/policy_screen.dart';

class PetApp extends StatelessWidget {
  final routers = <String, WidgetBuilder>{
    PetInfoScreen.name: (_) => const PetInfoScreen(),
    PolicyScreen.name: (_) => const PolicyScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OhMyPet Social',
      routes: routers,
      initialRoute: PetInfoScreen.name,
      onUnknownRoute: (_) {
        return MaterialPageRoute(builder: (_) => const PetInfoScreen());
      },
    );
  }
}

class PetInfoScreen extends StatefulWidget {
  static const name = '/';

  const PetInfoScreen({Key? key}) : super(key: key);

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

  final logo = Image.asset(
    Assets.logo,
    filterQuality: FilterQuality.high,
    fit: BoxFit.cover,
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(backgroundWidget.image, context);
    precacheImage(preview.image, context);
    precacheImage(logo.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.center,
        child: Stack(
          children: [
            backgroundWidget,
            Positioned.fill(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AspectRatio(
                        aspectRatio: 0.5,
                        child: preview,
                      ),
                    ),
                    Flexible(
                      child: FractionallySizedBox(
                        widthFactor: 0.384,
                        child: buildRightPanel(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRightPanel() {
    return Column(
      children: [
        logo,
        GradientButton(
          'coming soon',
          onTap: handleOnTap,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        ),
      ],
    );
  }

  void handleOnTap() {
    window.location.href = 'https://www.facebook.com/1ohmypet';
  }
}

class Assets {
  static const background = 'assets/background.png';
  static const logo = 'assets/logo.png';
  static const preview = 'assets/preview.png';
}
