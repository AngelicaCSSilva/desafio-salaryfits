import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Desafio_SalaryFits/details/comments/comments_controller.dart';
import 'package:Desafio_SalaryFits/details/comments/components/comment_card.dart';
import 'package:Desafio_SalaryFits/details/commons/components/error_box.dart';
import 'package:Desafio_SalaryFits/model/comments_model.dart';

class CommentsSection extends GetView<CommentsController> {
  const CommentsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx((state) {
      return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: state.length,
        itemBuilder: (_, index) {
          final CommentsModel item = state[index];
          return CommentCard(id: item.id, name: item.name, body: item.body);
        },
      );
    }, onError: (error) {
      return ErrorBox(
          onPressedFunction:
              controller.getPostsComments(int.parse(Get.parameters['id']!)));
    });
  }
}
