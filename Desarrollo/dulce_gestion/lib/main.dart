import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'presentation/main_app.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  return runApp(const MainApp());
}
