import 'package:flutter/material.dart';
import 'qr_code_generator_page.dart'; // <-- Make sure this import is correct

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // This must match the class name in `qr_code_generator_page.dart`
      home: const QRCodeGeneratorPage(),
    );
  }
}
