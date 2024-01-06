// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CultivatePage extends StatefulWidget {
  const CultivatePage({Key? key}) : super(key: key);

  @override
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
        child: Card(
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome to Cultivate Page! This is a cultivate page.',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 16.0),
                // Add more widgets within the card if needed
              ],
            ),
          ),
        ),
      ),
      // Add more widgets or customize as needed
    );
  }
}
//need to plan here to implement changes
//needt o improve the user interface
