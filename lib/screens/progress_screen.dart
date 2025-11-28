import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Progress")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.local_fire_department, color: Colors.red),
                title: Text("Streak"),
                subtitle: Text("You have a 0-day streak"),
              ),
            ),

            SizedBox(height: 10),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.warning, color: Colors.orange),
                title: Text("Weak Questions"),
                subtitle: Text("0 questions need improvement"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),

            SizedBox(height: 10),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.bar_chart, color: Colors.blue),
                title: Text("Overall Progress"),
                subtitle: Text("Your performance chart will appear here"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
