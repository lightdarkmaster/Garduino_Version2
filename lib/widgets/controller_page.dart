import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'result_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: ControllerPage(),
  ));
}

class ControllerPage extends StatefulWidget {
  const ControllerPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ControllerPageState createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  bool _isDeviceOn = false;

  void _toggleDevicePower() {
    setState(() {
      _isDeviceOn = !_isDeviceOn;
    });

    // Implement the logic for sending power on/off command to the remote device
    //print('Device power ${_isDeviceOn ? 'on' : 'off'}');
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
        backgroundColor: Colors.black, // Use a modern color scheme
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context); // Navigating back to the previous page (menu page).
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Lights',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Switch(
                  value: _isDeviceOn,
                  onChanged: (newValue) => _toggleDevicePower(),
                  activeColor:
                      Colors.green, // Use a modern color for the switch
                ),
              ],
            ),
            const SizedBox(height: 20), // Add spacing between sections
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButton(
                  'assets/svg/window.svg',
                  'Windows Open',
                  () => _onButtonPressed('Windows Open Successfully'),
                  buttonSize,
                ),
                _buildButton(
                  'assets/svg/window_close.svg',
                  'Windows Close',
                  () => _onButtonPressed('Windows Close Successfully'),
                  buttonSize,
                ),
              ],
            ),
            const SizedBox(height: 10), // Adjust spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButton(
                  'assets/svg/water.svg',
                  'Water Plant',
                  () => _onButtonPressed('Watering in Progress...'),
                  buttonSize,
                ),
                _buildButton(
                  'assets/svg/fan_open.svg',
                  'Fan On',
                  () => _onButtonPressed('Fan Turn On Successfully'),
                  buttonSize,
                ),
                _buildButton(
                  'assets/svg/fan_close.svg',
                  'Fan Off',
                  () => _onButtonPressed('Fan Turn Off Successfully'),
                  buttonSize,
                ),
              ],
            ),
            // Add more buttons here
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
    String iconPath,
    String label,
    void Function() onPressed,
    double buttonSize,
  ) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        // ignore: deprecated_member_use
        primary: const Color(0xFF21222D),
        side: const BorderSide(color: Colors.white),
        minimumSize: Size(buttonSize, buttonSize),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            // ignore: deprecated_member_use
            color: Colors.white, // Apply color to the icon if needed
            width: 48, // Adjust the width of the SVG
            height: 48, // Adjust the height of the SVG
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 14), // Use a modern font size
          ),
        ],
      ),
    );
  }
}
