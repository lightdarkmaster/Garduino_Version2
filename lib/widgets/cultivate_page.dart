import 'package:flutter/material.dart';

class CultivatePage extends StatefulWidget {
  const CultivatePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CultivatePageState createState() => _CultivatePageState();
}

class _CultivatePageState extends State<CultivatePage> {
  // Add your class logic and methods here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cultivate Plant'),
        backgroundColor: const Color(0xFF171821),
      ),
      body: const Center(
        child: Text('Welcome to Cultivate Page! this is a cultivate pages'),
      ),
      // Add more widgets or customize as needed
    );
  }
}
