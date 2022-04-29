import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:weather/common.dart';

class Charts extends StatelessWidget {
  const Charts({
    Key? key,
    required this.fiveDaysData,
  }) : super(key: key);

  final List<FiveDayModel> fiveDaysData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppText(
            text: 'Forcast Next 5 Days',
            fontSize: 20,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.bold,
          ),
          AppUi.shared.h10,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 260,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  series: <ChartSeries<FiveDayModel, String>>[
                    SplineSeries<FiveDayModel, String>(
                      dataSource: fiveDaysData,
                      xValueMapper: (FiveDayModel f, _) => f.dateTime,
                      yValueMapper: (FiveDayModel f, _) => f.temp,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
