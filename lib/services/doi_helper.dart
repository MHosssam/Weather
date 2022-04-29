import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

class DioHelperService extends GetxService {
  static DioHelperService get to => Get.find();

  String baseUrl = 'https://api.openweathermap.org/data/2.5';
  String apiKey = '719b4f73060febc3f131c41c274560ef';
  final dio = Dio();

  Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await dio.get(
      url,
      queryParameters: query,
    );
  }
}
