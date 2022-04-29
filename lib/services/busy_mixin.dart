import 'package:get/get.dart';

mixin BusyMixin {
  final errorMessage = <String, String?>{}.obs;
  void startBusy([String key = '']) {
    errorMessage[key] = null;
  }

  void endBusySuccess([String key = '']) {
    endBusy(key: key);
  }

  void endBusyError(
    Object? error, {
    String key = '',
    bool showDialog = true,
  }) {
    endBusy(error: error, key: key, showDialog: showDialog);
  }

  void endBusy({
    Object? error,
    String key = '',
    bool showDialog = true,
  }) {
    if (error == null) {
      errorMessage.remove(key);
    } else {
      String message;
      if (error is String) {
        message = error;
      } else {
        message = error.toString();
      }

      errorMessage[key] = message;
      if (message.isNotEmpty && showDialog == true) {
        printError(info: message);
        Get.defaultDialog(
          title: 'Error',
          middleText: message,
        );
      }
    }
  }

  bool isBusyValue([String key = '']) {
    return errorMessage.containsKey(key) && errorMessage[key] == null;
  }

  bool hasError([String key = '']) {
    return errorMessage[key] != null;
  }

  Object? errorMap([String key = '']) {
    return errorMessage[key];
  }
}
