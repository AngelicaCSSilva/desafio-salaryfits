import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:salaryfits_test/details/details_controller.dart';
import 'package:salaryfits_test/repository/i_posts_interface.dart';
import 'package:salaryfits_test/repository/posts_repository.dart';

import 'comments/comments_controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put<IPostsRepository>(PostsRepository(Get.find()));
    Get.put(DetailsController(Get.find()));
    Get.put(CommentsController(Get.find()));
  }
}
