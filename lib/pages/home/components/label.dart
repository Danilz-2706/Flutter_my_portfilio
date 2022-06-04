import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({
    required this.label,
    Key? key,
  }) : super(key: key);

  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
