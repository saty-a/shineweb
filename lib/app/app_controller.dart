
import '../base/base_controller.dart';
import 'data/repository/config_repository.dart';

class AppController extends BaseController<ConfigRepository> {
  @override
  void onInit() {
    super.onInit();
    repository.saveAppConfig();
  }
}
