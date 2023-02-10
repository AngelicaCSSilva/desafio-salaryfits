import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String titleText;

  const TitleText({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          titleText,
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ));
  }
}
