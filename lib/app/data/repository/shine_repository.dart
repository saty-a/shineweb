import '../../../base/base_reposiotry.dart';
import '../../helper/exception_handler.dart';
import '../models/dto/response.dart';
import '../models/response/shine_response.dart';

class ShineRepository extends BaseRepositry {

  Future<RepoResponse<Shine>> fetchNewsAPI(String url)  async{
    final response = await controller.post(path: url,data: {
    "pageNumber" :1
    });
    return response is APIException ?
    RepoResponse(error: response)
        : RepoResponse(data: Shine.fromJson(response));
  }

}
