import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salaryfits_test/details/commons/components/error_box.dart';
import 'package:salaryfits_test/home/components/post_card.dart';
import 'package:salaryfits_test/home/home_controller.dart';
import 'package:salaryfits_test/model/posts_model.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Postagens'),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final PostsModel item = state[index];
            return PostCard(title: item.title, body: item.body, id: item.id);
          },
        );
      }, onError: (error) {
        return ErrorBox(error: error, onPressedFunction: controller.getPosts());
      }),
    );
  }
}
