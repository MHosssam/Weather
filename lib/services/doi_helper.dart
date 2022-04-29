import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

class DioHelperService extends GetxService {
  static DioHelperService get to => Get.find();

  String baseUrl = 'https://api.openweathermap.org/data/2.5';
  String apiKey = '719b4f73060febc3f131c41c274560ef';
  Dio? dio;

  init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        headers: {
          HttpHeaders.acceptHeader: "accept: application/json",
          'os': 'android',
        },
      ),
    );
    super.onInit();
  }

  Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }
}
