import 'package:flutter/material.dart';
import 'package:social_4pet/policy.dart';
import 'package:social_4pet/term_of_user.dart';

class PolicyScreen extends StatelessWidget {
  static final String name = '/policy';

  const PolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(48),
        children: [
          TermOfUser(),
          const SizedBox(height: 48),
          Policy(),
        ],
      ),
    );
  }
}
