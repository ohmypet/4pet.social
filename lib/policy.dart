import 'dart:html';

import 'package:flutter/material.dart';
import 'package:social_4pet/common/Text/bold.dart';
import 'package:social_4pet/common/Text/h1.dart';
import 'package:social_4pet/common/Text/h2.dart';
import 'package:social_4pet/common/Text/italic.dart';

import 'common/Text/h4.dart';
import 'common/Text/h5.dart';

class Policy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Bold(child: H1('PRIVACY POLICY')),
        Italic(child: H5('Last Updated: June 13, 2021')),
        const SizedBox(height: 5),
        Container(
          height: 1,
          decoration: BoxDecoration(color: Colors.grey.withAlpha(56)),
        ),
        const SizedBox(height: 20),
        H4('Welcome to OhMyPet (“OhMyPet”, “we” or “us”). We are committed to protecting and respecting your privacy.'),
        const SizedBox(height: 15),
        Bold(child: H2('Collection of Personal Data')),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: _buildCollectionData(),
        ),
        const SizedBox(height: 20),
        Bold(child: H2('Use of Personal Data')),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: _buildUseOfPersonal(),
        ),
        const SizedBox(height: 20),
        Bold(child: H2('Protection of Personal Data')),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: H4(
              'We will take reasonable legal, organizational and technical measures to ensure that your personal data is protected. We work hard to protect OhMyPet and our users from unauthorized access, unauthorized modification, disclosure or destruction of the information we hold.'),
        ),
        const SizedBox(height: 15),
        Bold(child: H2('Changes')),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: H4(
              'We may update this Privacy Policy from time to time. When we update the Privacy Policy, we will notify you by updating the “Last Updated” date at the top of this policy and posting the new Privacy Policy and providing any other notice required by applicable law.'),
        ),
        const SizedBox(height: 15),
        Bold(child: H2('Contact')),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: _buildContact(),
        )
      ],
    );
  }

  void handleOpenMail() {
    window.location.href = 'mailto:contact@ohmypet.app';
  }

  Widget _buildCollectionData() {
    return Flex(
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.vertical,
      children: [
        const SizedBox(height: 5),
        H4('We collect information to provide better services to all of our users.'),
        const SizedBox(height: 10),
        Bold(child: H4('1.    Social Media and Login Services:')),
        const SizedBox(height: 5),
        H4('If you choose to link or sign up using  a third-party social network or login service (such as Facebook), we may collect information from these services.'),
        const SizedBox(height: 10),
        Bold(child: H4('2.    Other Sources:')),
        const SizedBox(height: 5),
        H4('We may collect information about you from other publicly available sources.'),
        const SizedBox(height: 10),
        Bold(child: H4('3.    Location data:')),
        const SizedBox(height: 5),
        H4('We collect information about your approximate location, including location information based on your SIM card and/or IP address. With your permission, we may also collect precise location data (such as GPS).'),
        const SizedBox(height: 10),
        Bold(child: H4('4.    Images and Videos:')),
        const SizedBox(height: 5),
        H4('We may collect information about the images, avatar and videos that are a part of your user content, such as identifying the objects and scenery that appear, the existence and location within an image of face and body features and attributes, and the text of the words spoken in your user content.'),
      ],
    );
  }

  Widget _buildUseOfPersonal() {
    return Flex(
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.vertical,
      children: [
        H4('1.    We identify and commit to collecting information to optimize user experience for the following purposes:'),
        const SizedBox(height: 5),
        H4('2.    Improve, develop and provide appropriate services for users'),
        const SizedBox(height: 5),
        H4('3.    Personalize User Experience'),
        const SizedBox(height: 5),
        H4('4.    For contact and protect users of OhMyPet'),
        const SizedBox(height: 5),
        H4('5.    Understand how you use, including across your devices'),
        const SizedBox(height: 5),
        H4('6.    Infer additional information about you, such as your age, gender, and interests'),
        const SizedBox(height: 5),
        H4('7.    Help us detect abuse, fraud, and illegal activity'),
      ],
    );
  }

  Widget _buildContact() {
    return Flex(
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.vertical,
      children: [
        H4('If you have any questions about this privacy policy or our information-handling practices, please contact us.'),
        Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.end,
          children: [
            Bold(child: H4('Email: ')),
            InkWell(
              child: DefaultTextStyle(
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
                child: H4('contact@ohmypet.app'),
              ),
              onTap: handleOpenMail,
            ),
          ],
        )
      ],
    );
  }
}
