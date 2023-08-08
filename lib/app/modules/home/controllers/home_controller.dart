import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../data/models/response/shine_response.dart';
import '../../../data/repository/shine_repository.dart';
import '../../../data/values/env.dart';
import '../../../data/values/images.dart';

class HomeController extends GetxController {

  late ScrollController scrollController;
  var _page=1.obs;
  RxList<Result> result=<Result>[].obs;
  final ShineRepository _appRepository = ShineRepository();


  Future<void> loadMore() async {
    if (scrollController.position.extentAfter < 300) {
      _page.value += 1; // Increase page by 1
    }
  }

  Future<void> getList() async {
    try{
     final response = await _appRepository.fetchNewsAPI(Env.baseURL);
      if (response?.error == null) {
        result.value = response.data!.result!;
      }
    }
    finally{
      debugPrint('Something went wrong');
    }
  }

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController()..addListener(loadMore);
    getList();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
