import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../styles/app_colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.primary,
          body: Obx(() => controller.result.isNotEmpty
              ? ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 5), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        gradient:const LinearGradient(
                          colors: [AppColors.white70, AppColors.transparent],
                        ),
                      ),
                      child: Column(
                        children: [
                          Image.network(controller.result[index].firstImage!,
                          fit: BoxFit.contain,
                          height: Get.height*.20,
                          width: Get.width,),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(controller.result[index].firstLabel!,style: const TextStyle(fontSize: 16,color: Colors.white),),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(controller.result[index].userId!.fullName!,style:const TextStyle(fontSize: 16,color: Colors.white)),
                        ],
                      ),
                    );
                  },
                  controller: controller.scrollController,
                  itemCount: controller.result.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    );
                  },
                )
              : const Center(child: CircularProgressIndicator()))),
    );
  }
}
