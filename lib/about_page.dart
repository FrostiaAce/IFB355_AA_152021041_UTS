import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat datang di Aplikasi UTS Mobile!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Universitas Itenas - Program Pemrograman Mobile',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tentang Aplikasi:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Aplikasi ini dikembangkan sebagai bagian dari Ujian Tengah Semester (UTS) di Program Pemrograman Mobile Universitas Itenas. Tujuan dari aplikasi ini adalah untuk memberikan pengalaman belajar yang interaktif dan menyenangkan bagi penggunanya.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Fitur Utama:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '- Kalkulator: Gunakan untuk melakukan berbagai perhitungan matematika.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- BMI Kalkulator: Hitung Indeks Massa Tubuh (BMI) untuk memantau kesehatan Anda.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Konversi Uang: Konversi mata uang dengan mudah.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Grafik (unfinish): Eksplorasi dan visualisasikan data dalam bentuk grafik.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Biodata: Lihat dan edit informasi pribadi Anda.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '- Pengaturan: Sesuaikan pengaturan aplikasi sesuai preferensi Anda.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Terima kasih telah menggunakan Aplikasi UTS Mobile!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
