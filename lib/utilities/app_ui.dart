import 'package:weather/common.dart';

class AppUi {
  static _AppColors get colors => _AppColors();
  static _AppFonts get fonts => _AppFonts();
  static _AppAssets get assets => _AppAssets();
  static _AppThemes get themes => _AppThemes();
  static _Others get shared => _Others();
}

class _AppColors {
  final mainColor = const Color(0xff49C9CB);
  final deepColor = const Color(0xff00182C);
  final appRed = Colors.red;
  final appBlue = const Color(0xff3A96AD);
  final appOrange = const Color(0xffFF702A);
  final appGreen = const Color(0xff65A090);
  final appYellow = const Color(0xffFFC229);
  final appLightYellow = const Color(0xffFFF6DF);
  final appBlack = const Color(0xff000000);
  final appLightBlack = Colors.black54;
  final transparent = Colors.transparent;
  final appWhite = const Color(0xffFFFFFF);
  final appGrey = Colors.grey.withOpacity(.8);
  final darkGrey = Colors.grey[800];
  final apptransparent = Colors.transparent;
}

class _AppFonts {
  final arabicFont = 'cairo';
  final englishFont = 'Poppins';
}

class _AppAssets {
  final background = 'assets/animation/sky.json';
  final sun = 'assets/animation/cloudy.json';
}

class _AppThemes {
  static IconThemeData get primaryIconTheme => const IconThemeData(
        // color: AppUi.colors.mainColor,
        size: 34,
      );
  static IconThemeData get whiteIconTheme => IconThemeData(
        color: AppUi.colors.appWhite,
        size: 34,
      );
  ThemeData get lightTheme => ThemeData(
        colorScheme: ColorScheme.light(
          primary: AppUi.colors.mainColor,
          secondary: AppUi.colors.appOrange,
          onSecondary: AppUi.colors.appWhite,
          surface: AppUi.colors.deepColor,
          onSurface: AppUi.colors.appWhite,
        ),
        iconTheme: primaryIconTheme,
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: const TextStyle(
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusColor: Colors.black,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
        primaryTextTheme: Typography().black.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
        textTheme: Typography().black.apply(
              bodyColor: Colors.black,
              displayColor: Colors.black,
            ),
        appBarTheme: AppBarTheme(
          iconTheme: primaryIconTheme,
        ),
        fontFamily: AppUi.fonts.englishFont,
      );
  ThemeData get darkTheme => ThemeData(
        colorScheme: ColorScheme.dark(
          // onPrimary: AppUi.colors.appWhite,
          secondary: AppUi.colors.appOrange,
          // onSecondary: AppUi.colors.appWhite,
          surface: AppUi.colors.deepColor,
          // onSurface: AppUi.colors.appWhite,
        ),
        iconTheme: whiteIconTheme,
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: const TextStyle(
            color: Colors.black,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusColor: Colors.black,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
        primaryTextTheme: Typography().white,
        textTheme: Typography().white,
        appBarTheme: AppBarTheme(iconTheme: whiteIconTheme),
        fontFamily: AppUi.fonts.englishFont,
      );
}

class _Others {
  final h4 = const SizedBox(height: 4);
  final h10 = const SizedBox(height: 10);
  final h20 = const SizedBox(height: 20);
  final h30 = const SizedBox(height: 30);
  final h40 = const SizedBox(height: 40);
  final h50 = const SizedBox(height: 50);
  final h60 = const SizedBox(height: 60);

  final w4 = const SizedBox(width: 4);
  final w10 = const SizedBox(width: 10);
  final w20 = const SizedBox(width: 20);
  final w30 = const SizedBox(width: 30);
  final w40 = const SizedBox(width: 40);
  final w50 = const SizedBox(width: 50);
}
