import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class FullScreenQRCodePage extends StatelessWidget {
  final String qrData;

  const FullScreenQRCodePage({super.key, required this.qrData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Remove the AppBar if you want a truly full screen
      appBar: AppBar(
        title: const Text('Full Screen QR Code'),
      ),
      body: Center(
        child: QrImageView(
          data: qrData,
          version: QrVersions.auto,
          // Adjust size as needed
          size: MediaQuery.of(context).size.width * 0.8,
        ),
      ),
    );
  }
}
