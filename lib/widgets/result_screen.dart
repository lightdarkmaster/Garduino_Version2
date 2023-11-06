import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String buttonText;

  const ResultScreen({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Screen'),
        backgroundColor: const Color(0xFF21222D),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Success:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              buttonText,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20), // Add spacing
            ElevatedButton(
              onPressed: () {
                // Navigate back to the previous page
                Navigator.pop(context);
              },
              child: const Text('Ok', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
