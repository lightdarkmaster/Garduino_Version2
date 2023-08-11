import 'package:flutter/material.dart';

class ControllerPage extends StatelessWidget {
  const ControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller Page'),
      ),
      body: const Center(
        child: Text('This is the Controller Page'),
      ),
    );
  }
}
