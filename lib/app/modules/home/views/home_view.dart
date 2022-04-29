import '../components/current_weather_section.dart';
import 'package:weather/common.dart';

import '../components/charts.dart';
import '../components/other_city.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          final currentData = controller.currentWeatherData.value;
          final fiveDaysData = controller.fiveDaysData..length;
          final dataList = controller.dataList..length;

          return currentData == null
              ? const Center(child: CircularProgressIndicator())
              : RefreshIndicator(
                  onRefresh: () async {
                    controller.getCurrentWeatherData();
                    controller.getTopFiveCities();
                    controller.getFiveDaysData();
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CurrentWeatherSection(
                          controller: controller,
                          currentWeather: currentData,
                        ),
                        AppUi.shared.h4,
                        const Divider(),
                        AppUi.shared.h4,
                        OtherCity(dataList: dataList),
                        AppUi.shared.h4,
                        const Divider(),
                        AppUi.shared.h4,
                        Charts(fiveDaysData: fiveDaysData),
                        AppUi.shared.h30,
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
