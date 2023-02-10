import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommentCard extends StatelessWidget {
  final int id;
  final String name;
  final String body;

  const CommentCard(
      {super.key, required this.id, required this.name, required this.body});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      onTap: () => Get.toNamed('/post/$id'),
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Text(
          'Usuário: $name',
          style: const TextStyle(
              color: Colors.purple, fontWeight: FontWeight.w500),
        ),
      ),
      subtitle:
          Text('"$body"', style: const TextStyle(fontStyle: FontStyle.italic)),
    ));
  }
}
