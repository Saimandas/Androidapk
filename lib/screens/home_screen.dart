import 'package:flutter/material.dart';
import '../widgets/home_tile.dart';
import 'reader_screen.dart';
import 'add_qa_screen.dart';
import 'practice_screen.dart';
import 'convert_screen.dart';
import 'progress_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Study Recall App"),
      ),

      // DRAWER
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountName: Text("Guest User",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              accountEmail: Text("Not logged in"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Colors.blue),
              ),
            ),

            SwitchListTile(
              secondary: Icon(Icons.dark_mode),
              title: Text("Night Mode"),
              value: false,
              onChanged: (val) {},
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.star, color: Colors.orange),
              title: Text("Upgrade to Premium"),
              subtitle: Text("Unlock full features"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.info),
              title: Text("About App"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.new_releases),
              title: Text("Version"),
              subtitle: Text("1.0.0"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.contact_support),
              title: Text("Support / Contact"),
              onTap: () {},
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.login),
              title: Text("Login with Google"),
              onTap: () {},
            ),
          ],
        ),
      ),

      // HOME CONTENT
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          HomeTile(
            icon: Icons.picture_as_pdf,
            title: "Reader",
            subtitle: "Open and read PDF/Word documents",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => ReaderScreen()));
            },
          ),
          HomeTile(
            icon: Icons.edit_note,
            title: "Add Q & A",
            subtitle: "Add questions and answers manually",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => AddQAScreen()));
            },
          ),
          HomeTile(
            icon: Icons.school,
            title: "Practice / Recall",
            subtitle: "Test yourself with voice and scoring",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => PracticeScreen()));
            },
          ),
          HomeTile(
            icon: Icons.swap_horiz,
            title: "Convert Files",
            subtitle: "Word ↔ PDF conversions",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => ConvertScreen()));
            },
          ),
          HomeTile(
            icon: Icons.bar_chart,
            title: "Progress",
            subtitle: "Streaks, weak questions and stats",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => ProgressScreen()));
            },
          ),
        ],
      ),
    );
  }
}