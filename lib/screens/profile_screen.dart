
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile / Settings")),
      body: Center(child: Text("Settings, theme, language options")),
    );
  }
}