
import 'package:flutter/material.dart';

class ReaderScreen extends StatelessWidget {
  const ReaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reader"),
      ),
      body: Center(
        child: Text(
          "Select and open PDF/Word files here",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
