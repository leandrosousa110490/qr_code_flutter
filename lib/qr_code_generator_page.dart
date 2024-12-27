import 'package:flutter/material.dart';
import 'full_screen_qr_code_page.dart'; // <-- Import the fullscreen page

class QRCodeGeneratorPage extends StatefulWidget {
  const QRCodeGeneratorPage({super.key});

  @override
  State<QRCodeGeneratorPage> createState() => _QRCodeGeneratorPageState();
}

class _QRCodeGeneratorPageState extends State<QRCodeGeneratorPage> {
  final TextEditingController _textController = TextEditingController();

  void _generateAndOpenQRCode() {
    final inputText = _textController.text.trim();
    if (inputText.isNotEmpty) {
      // Navigate to FullScreenQRCodePage when the user taps Generate
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FullScreenQRCodePage(qrData: inputText),
        ),
      );
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Generator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Enter text to generate QR code',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _generateAndOpenQRCode,
              child: const Text('Generate'),
            ),
          ],
        ),
      ),
    );
  }
}
