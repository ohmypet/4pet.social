import 'package:flutter/material.dart';
import 'package:social_4pet/pet_app.dart';

import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';

void main() {
  configureApp();
  runApp(PetApp());
}
