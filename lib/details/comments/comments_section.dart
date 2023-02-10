import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salaryfits_test/details/comments/comments_controller.dart';
import 'package:salaryfits_test/details/comments/components/comment_card.dart';
import 'package:salaryfits_test/model/comments_model.dart';

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
    });
  }
}
