import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../utils/storage/storage_utils.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _startOnboarding();
  }

  _startOnboarding() async {
    await Future.delayed(const Duration(seconds: 3));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringValue = prefs.getString('login');
    if (stringValue!=null)
      Get.offAllNamed(Routes.HOME);
    else
      Get.offAllNamed(Routes.LOGIN);
  }
}
