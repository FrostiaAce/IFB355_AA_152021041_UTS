import 'package:flutter/material.dart';
import 'Addition/constants.dart';
import 'calculator_page.dart';
import 'bmi_calculator.dart';
import 'graph_page.dart';
import 'setting_page.dart';
import 'biodata_page.dart';
import 'About_page.dart';
import 'login_page.dart';
import 'KonversiUang.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Fidel F Y'), // Display user name
            accountEmail: Text('email@example.com'), // Display user email
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/fidel.jpg"),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
          ),
          ListTile(
            leading: Icon(Icons.calculate), // Icon untuk KalKulator
            title: Text('KalKulator', style: textTextStyle),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CalculatorPage()));
            },
          ),
          ListTile(
            leading:
                Icon(Icons.calculate_outlined), // Icon untuk BMI KalKulator
            title: Text('BMI KalKulator', style: textTextStyle),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BMICalculatorPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.money), // Icon untuk About
            title: Text('Konversi', style: textTextStyle),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => KonversiUang()));
            },
          ),
          ListTile(
            leading: Icon(Icons.show_chart), // Icon untuk Grafik
            title: Text('Grafik (unfinish)', style: textTextStyle),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => GraphPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person), // Icon untuk Biodata
            title: Text('Biodata', style: textTextStyle),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BiodataPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings), // Icon untuk Settings
            title: Text('Settings', style: textTextStyle),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info), // Icon untuk About
            title: Text('About', style: textTextStyle),
            onTap: () {
              Navigator.pop(context); // Tutup drawer
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
          Divider(), // Add a divider to separate items
          ListTile(
            leading: Icon(Icons.logout), // Icon untuk Logout
            title: Text('Logout', style: textTextStyle),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
