import 'package:get/get.dart';

import 'app_controller.dart';
import 'data/network/network_requester.dart';
import 'data/network/network_utils.dart';
import 'data/repository/config_repository.dart';
import 'data/repository/shine_repository.dart';
import 'modules/home/controllers/home_controller.dart';


class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkRequester(), permanent: true);
    Get.put(ConfigRepository(), permanent: true);
    Get.put(ShineRepository(), permanent: true);
    Get.put(AppController(), permanent: true);
    Get.lazyPut(() => HomeController());
    Get.put(NetworkUtils());
  }
}
