import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      decoration: BoxDecoration(
          color: Colors.lightGreen, borderRadius: BorderRadius.circular(19)),
    );
  }
}
