import 'package:flutter/material.dart';

import 'common/Text/bold.dart';
import 'common/Text/h1.dart';
import 'common/Text/h2.dart';
import 'common/Text/h4.dart';
import 'common/Text/h5.dart';
import 'common/Text/italic.dart';

class TermOfUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Bold(child: H1('TERMS OF USE')),
        Italic(child: H5('Last Updated: June 13, 2021')),
        const SizedBox(height: 5),
        Container(
          height: 1,
          decoration: BoxDecoration(color: Colors.grey.withAlpha(56)),
        ),
        const SizedBox(height: 20),
        H4('By using OhMyPet service you are agreeing to be bound by the following terms and conditions ("Terms of Use").'),
        const SizedBox(height: 15),
        Bold(child: H2('Basic Terms')),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: _basicTerm(),
        ),
        const SizedBox(height: 20),
        Bold(child: H2('General Conditions')),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: _generalCondition(),
        ),
        const SizedBox(height: 20),
        Bold(child: H2('Severability')),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: H4('Should one or more provisions of these Terms of Use be found to be unlawful, void or unenforceable, such provision(s) shall be deemed severable and will not affect the validity and/or enforceability of the remaining provisions of the Terms of Use, which will remain in full force and effect.'),
        ),
      ],
    );
  }

  Widget _basicTerm() {
    return Flex(
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.vertical,
      children: [
        const SizedBox(height: 5),
        H4('1.    You must be 13 years or older to use this site.'),
        const SizedBox(height: 5),
        H4('2.    You may not post nude, partially nude, or sexually suggestive photos.'),
        const SizedBox(height: 5),
        H4('3.    You are responsible for any activity that occurs under your screen name.'),
        const SizedBox(height: 5),
        H4('4.    You must not abuse, harass, threaten, impersonate or intimidate other OhMyPet users.'),
        const SizedBox(height: 5),
        H4('5.    You may not use the OhMyPet service for any illegal or unauthorized purpose. International users agree to comply with all local laws regarding online conduct and acceptable content.'),
        const SizedBox(height: 5),
        H4('6.    You are solely responsible for your conduct and any data, text, information, screen names, graphics, photos, profiles, audio and video clips, links that you submit, post, and display on the OhMyPet service.'),
        const SizedBox(height: 5),
        H4('7.    You must not spam comments to any OhMyPet members.'),
        const SizedBox(height: 5),
        H4('8.    You must not transmit any worms or viruses or any code of a destructive nature.'),
        const SizedBox(height: 5),
        H4('9.    You must not, in the use of OhMyPet, violate any laws in your jurisdiction.'),
        const SizedBox(height: 5),
        H4('10.   Violation of any of these agreements will result in the termination of your OhMyPet account.'),
      ],
    );
  }

  Widget _generalCondition() {
    return Flex(
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.vertical,
      children: [
        const SizedBox(height: 5),
        H4('1.    We reserve the right to modify or terminate the OhMyPet service for any reason, without notice at any time.'),
        const SizedBox(height: 5),
        H4('2.    We reserve the right to alter these Terms of Use at any time. If the alterations constitute a material change to the Terms of Use, we will notify you via internet mail according to the preference expressed on your account.'),
        const SizedBox(height: 5),
        H4('3.    We reserve the right to refuse service to anyone for any reason at any time.'),
        const SizedBox(height: 5),
        H4('4.    We reserve the right to force forfeiture of any username that becomes inactive, violates trademark, or may mislead other users.'),
      ],
    );
  }
}
