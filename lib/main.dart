import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // === Title Section (sudah beres Soal 1–3) ===
    final Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Wisata Coban di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red),
          SizedBox(width: 4),
          Text('41'),
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Coban Talun Adalah Coban yang berada di Batu, Kota Malanh '
        'tidak hanya coban talun saja tetapi juga ada taman bunga dan '
        'pendakian bukit kalindra. laporan ini milik : '
        'Kartika Tri Juliana dan 2341760116.'
        'Selamat membaca informasinya.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Kartika Tri Juliana - 2341760116',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Layout Kartika')),
        body: ListView(
          children: [
            Image.asset(
              'images/coban.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection, // Menambahkan buttonSection
            textSection, // Menambahkan t
          ],
        ),
      ),
    );
  }

  // Helper untuk membuat satu kolom tombol (ikon + label)
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
