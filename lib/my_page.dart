import 'package:bar_progress/bar_manager.dart';
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Padding ao redor do widget
          child: Center(
            child: BarManager(), // Chama a função 'bar' que retorna um widget
          ),
        ),
      ),
    );
  }
}
