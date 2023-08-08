import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/network/network_utils.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final NetworkUtils _networkUtils = Get.find<NetworkUtils>();
  Future<void> login() async {
    if (await _networkUtils.login()) {
      Get.offNamed(Routes.HOME);
    } else {
      Get.snackbar("Error", "Login Failed");
    }
  }
}
