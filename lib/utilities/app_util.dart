import 'package:intl/intl.dart' as intl;

class AppUtil {
  static const List<String> _rtlLanguages = <String>[
    'ar', // Arabic
    'fa', // Farsi
    'he', // Hebrew
    'ps', // Pashto
    'ur', // Urdu
  ];
  static bool get isLtr =>
      !_rtlLanguages.contains(intl.Intl.getCurrentLocale().toLowerCase());
}
