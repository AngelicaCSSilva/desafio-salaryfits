import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        ]);
      }),
    );
  }
}
