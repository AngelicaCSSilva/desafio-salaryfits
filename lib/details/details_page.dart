import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salaryfits_test/details/comments/comments_section.dart';
import 'package:salaryfits_test/details/commons/components/error_box.dart';
import 'package:salaryfits_test/details/commons/components/title_text.dart';
import 'package:salaryfits_test/details/details_controller.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: controller.obx((state) {
        return Column(children: [
          ListTile(
            title: TitleText(titleText: state.title),
            subtitle: Text(state.body),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
          const Divider(
            height: 5,
            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          const TitleText(titleText: 'Comentários'),
          const CommentsSection()
        ]);
      }, onError: (error) {
        return ErrorBox(
            onPressedFunction:
                controller.getPostDetails(int.parse(Get.parameters['id']!)));
      }),
    );
  }
}
