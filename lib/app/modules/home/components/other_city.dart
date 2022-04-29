import 'package:lottie/lottie.dart';
import 'package:weather/common.dart';

class OtherCity extends StatelessWidget {
  const OtherCity({
    Key? key,
    required this.dataList,
  }) : super(key: key);

  final List<CurrentWeatherModel> dataList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppText(
            text: 'Other City',
            fontSize: 20,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.bold,
          ),
          AppUi.shared.h4,
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                final item = dataList[index];
                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        AppText(
                          text: item.name,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                        AppUi.shared.h4,
                        AppText(
                          text: '${(item.main!.temp! - 273.15).round()} \u2103',
                          fontWeight: FontWeight.bold,
                        ),
                        AppUi.shared.h4,
                        Lottie.asset(
                          AppUi.assets.sun,
                          width: 50,
                          height: 45,
                        ),
                        AppUi.shared.h4,
                        AppText(text: item.weather!.first.description),
                        AppUi.shared.h10,
                        AppText(
                          text:
                              'min: ${(item.main!.tempMin! - 273.15).round()} \u2103',
                          textAlign: TextAlign.start,
                        ),
                        AppUi.shared.h4,
                        AppText(
                          text:
                              'max: ${(item.main!.tempMax! - 273.15).round()} \u2103',
                          textAlign: TextAlign.start,
                        ),
                        AppUi.shared.h4,
                        AppText(
                          text: 'wind: ${item.wind!.speed} m/s',
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
