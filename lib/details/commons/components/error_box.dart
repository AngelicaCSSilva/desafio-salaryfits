import 'package:flutter/material.dart';

class ErrorBox extends StatelessWidget {
  final String? error;
  final Future<void> onPressedFunction;

  const ErrorBox({super.key, this.error, required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(error!),
          TextButton(
            onPressed: () => onPressedFunction,
            child: const Text('Clique aqui para tentar novamente.'),
          )
        ],
      ),
    );
  }
}
