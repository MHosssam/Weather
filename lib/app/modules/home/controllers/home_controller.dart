import 'package:dio/dio.dart';
import 'package:weather/common.dart';

class HomeController extends GetxController with BusyMixin {
  final searchTxtController = TextEditingController(text: 'mansoura');

  final dio = Dio();

  final currentWeatherData = Rxn<CurrentWeatherModel>();
  final dataList = <CurrentWeatherModel>[].obs;
  final fiveDaysData = <FiveDayModel>[].obs;

  @override
  void onReady() {
    super.onReady();
    getCurrentWeatherData();
    getTopFiveCities();
    getFiveDaysData();
  }

  Future<void> getCurrentWeatherData() async {
    try {
      startBusy();
      final _url = '${DioHelperService.to.baseUrl}/weather?';
      // dio.options.headers['Content-Type'] = 'application/json';
      final data = await DioHelperService.to.getData(
        url: _url,
        query: {
          'q': searchTxtController.text.replaceAll(' ', ''),
          'lang': 'en',
          'appid': DioHelperService.to.apiKey,
        },
      );
      currentWeatherData.value = CurrentWeatherModel.fromJson(map: data.data);
      endBusySuccess();
    } catch (e) {
      endBusyError(e);
    }
  }

  Future<void> getTopFiveCities() async {
    final cities = <String>[
      'zagazig',
      'cairo',
      'alexandria',
      'ismailia',
      'fayoum'
    ];
    try {
      startBusy();
      final _url = '${DioHelperService.to.baseUrl}/weather?';
      // dio.options.headers['Content-Type'] = 'application/json';
      for (var c in cities) {
        final data = DioHelperService.to.getData(
          url: _url,
          query: {
            'q': c,
            'lang': 'en',
            'appid': DioHelperService.to.apiKey,
          },
        );
        dataList.add(
          await data.then(
            (value) => CurrentWeatherModel.fromJson(map: value.data),
          ),
        );
      }
      endBusySuccess();
    } catch (e) {
      endBusyError(e);
    }
  }

  Future<void> getFiveDaysData() async {
    try {
      startBusy();

      final _url = '${DioHelperService.to.baseUrl}/forecast?';
      // dio.options.headers['Content-Type'] = 'application/json';
      final data = await DioHelperService.to.getData(
        url: _url,
        query: {
          'q': searchTxtController.text.replaceAll(' ', ''),
          'lang': 'en',
          'appid': DioHelperService.to.apiKey,
        },
      );

      fiveDaysData.assignAll(
        (data.data['list'] as List)
            .map((t) => FiveDayModel.fromJson(map: t))
            .toList(),
      );
      endBusySuccess();
    } catch (e) {
      endBusyError(e);
    }
  }
}
