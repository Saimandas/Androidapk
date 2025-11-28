
import 'package:flutter/material.dart';

class ConvertScreen extends StatelessWidget {
  const ConvertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Convert Files")),

      body: ListView(
        padding: EdgeInsets.all(16),
        children: [

          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: Icon(Icons.picture_as_pdf, color: Colors.red, size: 32),
              title: Text("Word ➝ PDF"),
              subtitle: Text("Convert .docx files into PDF"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // TODO: Word -> PDF Logic
              },
            ),
          ),

          SizedBox(height: 10),

          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: Icon(Icons.description, color: Colors.blue, size: 32),
              title: Text("PDF ➝ Word"),
              subtitle: Text("Convert PDFs into Word (.docx)"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // TODO: PDF -> Word Logic
              },
            ),
          ),
        ],
      ),
    );
  }
}

