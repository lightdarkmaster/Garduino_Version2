// ignore_for_file: library_private_types_in_public_api, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'result_screen.dart';

class ControllerPage extends StatefulWidget {
  const ControllerPage({Key? key}) : super(key: key);

  @override
  _ControllerPageState createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  bool _isDeviceOn = false;

  void _toggleDevicePower() {
    setState(() {
      _isDeviceOn = !_isDeviceOn;
    });

    // Implement the logic for sending power on/off command to the remote device
    print('Device power ${_isDeviceOn ? 'on' : 'off'}');
    // You can replace the print statement with actual command sending logic
  }

  void _onButtonPressed(String action) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(buttonText: action),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double buttonSize = MediaQuery.of(context).size.width * 0.25;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller Page'),
        backgroundColor: const Color(0xFF21222D),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Lights'),
                Switch(
                  value: _isDeviceOn,
                  onChanged: (newValue) => _toggleDevicePower(),
                ),
              ],
            ),
            const SizedBox(height: 20), // Add spacing between sections
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 10, // Horizontal spacing between buttons
              children: [
                ElevatedButton(
                  onPressed: () => _onButtonPressed('Windows Open Sucessfully'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF21222D),
                    side: const BorderSide(color: Colors.white),
                    minimumSize: Size(buttonSize, buttonSize),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/window.svg', // Replace with your SVG icon pathicon: 'assets/svg/home.svg',
                        color:
                            Colors.white, // Apply color to the icon if needed
                        width: 48, // Adjust the width of the SVG
                        height: 48, // Adjust the height of the SVG
                      ),
                      const SizedBox(height: 8),
                      const Text('Windows Open'),
                    ],
                  ),
                ),

                ElevatedButton(
                  onPressed: () =>
                      _onButtonPressed('Windows Close Sucessfully'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF21222D),
                    side: const BorderSide(color: Colors.white),
                    minimumSize: Size(buttonSize, buttonSize),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/window_close.svg', // Replace with your SVG icon pathicon: 'assets/svg/home.svg',
                        color:
                            Colors.white, // Apply color to the icon if needed
                        width: 48, // Adjust the width of the SVG
                        height: 48, // Adjust the height of the SVG
                      ),
                      const SizedBox(height: 8),
                      const Text('Windows Close'),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('Watering in Progress..'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF21222D),
                    side: const BorderSide(color: Colors.white),
                    minimumSize: Size(buttonSize, buttonSize),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/water.svg', // Replace with your SVG icon pathicon: 'assets/svg/home.svg',
                        color:
                            Colors.white, // Apply color to the icon if needed
                        width: 48, // Adjust the width of the SVG
                        height: 48, // Adjust the height of the SVG
                      ),
                      const SizedBox(height: 8),
                      const Text('Water Plant'),
                    ],
                  ),
                ),

                ElevatedButton(
                  onPressed: () => _onButtonPressed('Fan Turn On Sucessfully'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF21222D),
                    side: const BorderSide(color: Colors.white),
                    minimumSize: Size(buttonSize, buttonSize),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/fan_open.svg', // Replace with your SVG icon pathicon: 'assets/svg/home.svg',
                        color:
                            Colors.white, // Apply color to the icon if needed
                        width: 48, // Adjust the width of the SVG
                        height: 48, // Adjust the height of the SVG
                      ),
                      const SizedBox(height: 8),
                      const Text('Fan On'),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _onButtonPressed('Fan Turn Off Sucessfully'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF21222D),
                    side: const BorderSide(color: Colors.white),
                    minimumSize: Size(buttonSize, buttonSize),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/fan_close.svg', // Replace with your SVG icon pathicon: 'assets/svg/home.svg',
                        color:
                            Colors.white, // Apply color to the icon if needed
                        width: 48, // Adjust the width of the SVG
                        height: 48, // Adjust the height of the SVG
                      ),
                      const SizedBox(height: 8),
                      const Text('Fan Off'),
                    ],
                  ),
                ),
                // Add more buttons here
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: ControllerPage(),
    ),
  );
}
