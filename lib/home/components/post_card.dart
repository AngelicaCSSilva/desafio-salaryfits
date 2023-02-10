import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salaryfits_test/details/commons/components/title_text.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String body;
  final int id;

  const PostCard(
      {super.key, required this.title, required this.body, required this.id});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: const Color.fromARGB(255, 240, 255, 255),
        child: ListTile(
          onTap: () => Get.toNamed('/post/$id'),
          title: TitleText(titleText: title),
          subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      body,
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Leia mais...",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )),
        ));
  }
}
