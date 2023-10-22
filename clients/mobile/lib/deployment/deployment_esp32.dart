import 'package:flutter/material.dart';
import 'package:headless_haystack/deployment/code_block.dart';
import 'package:headless_haystack/deployment/deployment_details.dart';
import 'package:headless_haystack/deployment/hyperlink.dart';

class DeploymentInstructionsESP32 extends StatelessWidget {
  final String advertisementKey;

  /// Displays a deployment guide for the ESP32 platform.
  const DeploymentInstructionsESP32({
    Key? key,
    this.advertisementKey = '<ADVERTISEMENT_KEY>',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DeploymentDetails(
      title: 'ESP32 Deployment',
      steps: [
        const Step(
          title: Text('Requirements'),
          content: Text('To build the firmware for the ESP32 Espressif\'s '
              'IoT Development Framework (ESP-IDF) is required. Additionally '
              'Python 3 and the venv module need to be installed.'),
        ),
        const Step(
          title: Text('Download'),
          content: Column(
            children: [
              Text('Download the firmware source code from GitHub '
                  'and navigate to the given folder.'),
              Hyperlink(target: 'https://github.com/seemoo-lab/openhaystack'),
              CodeBlock(
                  text:
                      'git clone https://github.com/seemoo-lab/openhaystack.git && cd openhaystack/Firmware/ESP32'),
            ],
          ),
        ),
        const Step(
          title: Text('Build'),
          content: Column(
            children: [
              Text(
                  'Execute the ESP-IDF build command to create the ESP32 firmware.'),
              CodeBlock(text: 'idf.py build'),
            ],
          ),
        ),
        Step(
          title: const Text('Firmware Deployment'),
          content: Column(
            children: [
              const Text('If the firmware is built successfully it can '
                  'be flashed onto the ESP32. This action is performed by '
                  'the flash_esp32.sh script that is provided with the '
                  'advertisement key of the newly created accessory.'),
              const Text(
                'Please fill in the serial port of your microcontroller.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              CodeBlock(
                  text:
                      './flash_esp32.sh -p /dev/yourSerialPort "$advertisementKey"'),
            ],
          ),
        ),
      ],
    );
  }
}
