import 'package:flutter/material.dart';
import 'package:pemograman_mobile/KonversiUang.dart';
import 'sidebar.dart';
import 'calculator_page.dart'; // Import your Calculator page
import 'bmi_calculator.dart'; // Import your BMI Calculator page
import 'biodata_page.dart';
import 'graph_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double buttonHeight = MediaQuery.of(context).size.height * 0.25 / 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: SideBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to Calculator page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalculatorPage()),
                      );
                    },
                    icon: const Icon(
                      Icons.calculate,
                      size: 60,
                    ),
                    label: const Text(
                      'KalKulator',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .purple, // Ganti warna latar belakang tombol menjadi ungu
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to BMI Calculator page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BMICalculatorPage()),
                      );
                    },
                    icon: const Icon(
                      Icons.accessibility,
                      size: 60,
                    ),
                    label: const Text(
                      'BMI kalkulator',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .purple, // Ganti warna latar belakang tombol menjadi ungu
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to Graph page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GraphPage()),
                      );
                    },
                    icon: const Icon(
                      Icons.insert_chart,
                      size: 60,
                    ),
                    label: const Text(
                      'Grafik',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .purple, // Ganti warna latar belakang tombol menjadi ungu
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to Biodata page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BiodataPage()),
                      );
                    },
                    icon: const Icon(
                      Icons.person,
                      size: 60,
                    ),
                    label: const Text(
                      'Biodata',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .purple, // Ganti warna latar belakang tombol menjadi ungu
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to Biodata page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KonversiUang()),
                      );
                    },
                    icon: const Icon(
                      Icons.money,
                      size: 60,
                    ),
                    label: const Text(
                      'Konversi',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .purple, // Ganti warna latar belakang tombol menjadi ungu
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
