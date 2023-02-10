import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:salaryfits_test/home/home_controller.dart';
import 'package:salaryfits_test/repository/i_posts_interface.dart';
import 'package:salaryfits_test/repository/posts_repository.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put<IPostsRepository>(PostsRepository(Get.find()));
    Get.put(HomeController(Get.find()));
  }
}
