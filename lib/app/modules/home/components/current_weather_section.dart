import 'package:lottie/lottie.dart';
import 'package:weather/app/modules/home/controllers/home_controller.dart';

import 'weather_card.dart';
import 'package:weather/common.dart';

class CurrentWeatherSection extends StatelessWidget {
  const CurrentWeatherSection({
    Key? key,
    required this.controller,
    required this.currentWeather,
  }) : super(key: key);

  final CurrentWeatherModel currentWeather;
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return controller.isBusyValue()
        ? const Center(child: CircularProgressIndicator())
        : SizedBox(
            height: 280,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Lottie.asset(
                    AppUi.assets.background,
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  right: 20,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormFieldWidget(
                        isBorder: true,
                        controller: controller.searchTxtController,
                        borderColor: context.theme.colorScheme.primary,
                        suffixIcon: InkWell(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: const Icon(Icons.search),
                          ),
                          onTap: () {
                            controller.getCurrentWeatherData();
                            controller.getFiveDaysData();
                          },
                        ),
                      ),
                      AppUi.shared.h10,
                      WeatherCard(item: currentWeather),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
