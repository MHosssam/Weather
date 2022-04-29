import 'package:weather/common.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DioHelperService());
  }
}
