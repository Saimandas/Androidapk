
import 'package:flutter/material.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Questions")),

      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 10, // TEMP: replace with real database count
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: Icon(Icons.help_outline, color: Colors.blue),
              title: Text("Sample Question ${index + 1}"),
              subtitle: Text("Tap to view or practice"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // TODO: Question detail screen
              },
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Navigate to Add Q&A Screen
          Navigator.pushNamed(context, "/addQA");
        },
      ),
    );
  }
}

