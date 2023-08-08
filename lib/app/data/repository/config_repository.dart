import '../../../base/base_reposiotry.dart';
import '../../../utils/storage/storage_utils.dart';
import '../../helper/exception_handler.dart';
import '../models/response/app_config_response.dart';
import '../values/env.dart';
import '../values/urls.dart';

class ConfigRepository extends BaseRepositry {
  saveAppConfig() async {
    final response = await controller.get(path: Env.baseURL);
    if (!(response is APIException))
      Storage.setAppConfig(AppConfigResponse.fromJson(response).data);
  }
}
