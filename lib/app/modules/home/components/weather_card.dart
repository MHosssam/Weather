import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/common.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({Key? key, required this.item}) : super(key: key);

  final CurrentWeatherModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppUi.shared.h10,
          AppText(
            text: item.name,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          AppUi.shared.h4,
          AppText(
            text:
                DateFormat().add_MMMMEEEEd().format(DateTime.now()).toString(),
          ),
          AppUi.shared.h10,
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      AppText(text: item.weather!.first.description),
                      AppUi.shared.h10,
                      AppText(
                        text: '${(item.main!.temp! - 273.15).round()} \u2103',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      AppUi.shared.h10,
                      AppText(
                        text:
                            'min: ${(item.main!.tempMin! - 273.15).round()} \u2103 / max: ${(item.main!.tempMax! - 273.15).round()} \u2103',
                      ),
                    ],
                  ),
                ),
                AppUi.shared.w10,
                Column(
                  children: [
                    Lottie.asset(
                      AppUi.assets.sun,
                      width: 140,
                      height: 70,
                    ),
                    AppUi.shared.h4,
                    AppText(
                      text: 'wind: ${item.wind!.speed} m/s',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
