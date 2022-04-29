import 'package:weather/common.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather",
      initialBinding: MainBinding(),
      initialRoute: AppPages.INITIAL,
      theme: AppUi.themes.lightTheme,
      // darkTheme: AppUi.themes.darkTheme,
      getPages: AppPages.routes,
    );
  }
}
