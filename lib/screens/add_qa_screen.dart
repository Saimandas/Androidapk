
import 'package:flutter/material.dart';

class AddQAScreen extends StatelessWidget {
  const AddQAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Q & A")),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Question", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),

            TextField(
              decoration: InputDecoration(
                hintText: "Enter your question",
                border: OutlineInputBorder(),
              ),
              maxLines: 2,
            ),

            SizedBox(height: 20),

            Text("Answer", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),

            TextField(
              decoration: InputDecoration(
                hintText: "Enter your answer",
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),

            SizedBox(height: 20),

            // Voice Input Button (Answer)
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: Icon(Icons.mic),
              label: Text("Record Answer", style: TextStyle(fontSize: 18)),
              onPressed: () {
                // TODO: Voice Input
              },
            ),

            Spacer(),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text("Save Q & A", style: TextStyle(fontSize: 18)),
              onPressed: () {
                // TODO: Save to DB
              },
            ),
          ],
        ),
      ),
    );
  }
}