import 'package:flutter/material.dart';

class BiodataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'assets/fidel.jpg'), // Ganti dengan path gambar profil Anda
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Data Mahasiswa',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Nama: Fidel Fadilah Yusanto', style: TextStyle(fontSize: 18)),
            Text('Nrp: 152021041', style: TextStyle(fontSize: 18)),
            Text('Umur: 20', style: TextStyle(fontSize: 18)),
            Text('Telp: 0895605867671', style: TextStyle(fontSize: 18)),
            Text('Email: hiyamanao9@gmail.com', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
