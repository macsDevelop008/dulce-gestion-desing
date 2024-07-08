import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String appVersion =
      dotenv.get('APP_VERSION', fallback: 'null-default');
}
