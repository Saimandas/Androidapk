
import 'package:flutter/material.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Practice / Recall")),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

            // Start practice button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text("Start Practice", style: TextStyle(fontSize: 18)),
              onPressed: () {
                // TODO: Start Recall Logic
              },
            ),

            SizedBox(height: 20),

            // Weak Questions
            ListTile(
              leading: Icon(Icons.warning_amber, color: Colors.orange),
              title: Text("Weak Questions"),
              subtitle: Text("Improve the questions you answered wrong"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),

            // Recent Questions
            ListTile(
              leading: Icon(Icons.history, color: Colors.blue),
              title: Text("Recent Practice"),
              subtitle: Text("Your recent attempts"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),

            // Random
            ListTile(
              leading: Icon(Icons.shuffle, color: Colors.green),
              title: Text("Random Practice"),
              subtitle: Text("Practice any random question"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}