import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:Desafio_SalaryFits/details/comments/comments_controller.dart';
import 'package:Desafio_SalaryFits/details/details_controller.dart';
import 'package:Desafio_SalaryFits/repository/i_posts_interface.dart';
import 'package:Desafio_SalaryFits/repository/posts_repository.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put<IPostsRepository>(PostsRepository(Get.find()));
    Get.put(CommentsController(Get.find()));
    Get.put(DetailsController(Get.find()));
  }
}
