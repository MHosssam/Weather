import 'package:weather/common.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Weather",
      initialBinding: MainBinding(),
      // initialRoute: AppPages.INITIAL,
      builder: (context, child) {
        if (child == null) throw Exception("child can never be null");
        return FutureBuilder<void>(
          future: Get.find<DioHelperService>().init(),
          builder: (context, snapshot) {
            if (snapshot.hasError) return ErrorWidget(snapshot.error!);
            return child;
            // if (snapshot.connectionState != ConnectionState.done) {
            //   return const SplashView();
            // }
          },
        );
      },
      theme: AppUi.themes.lightTheme,
      // darkTheme: AppUi.themes.darkTheme,
      getPages: AppPages.routes,
    );
  }
}
