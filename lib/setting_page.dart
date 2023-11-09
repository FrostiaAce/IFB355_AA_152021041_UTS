import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            ListTile(
              title: Text('Account'),
              onTap: () {
                // Navigate to the account settings page
                // You can add the navigation logic here
              },
            ),
            Divider(),
            ListTile(
              title: Text('Theme'),
              onTap: () {
                // Navigate to the theme settings page
                // You can add the navigation logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
