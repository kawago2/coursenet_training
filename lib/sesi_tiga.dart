import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
    required this.title,
  });
  final String title;
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double px = 20;
    // Contoh List
    List mobil = ["TOYOTA", "HONDA", "MAZDA"];
    // Contoh Map<key,value>
    Map<String, dynamic> TOYOTA = {
      "warna": "merah",
      "row": 3,
      "harga": "400 juta",
    };

    List mobil_gabungan = [
      {"merk": "TOYOTA", "harga": 100 * 1000000, "row": 3},
      {"merk": "HONDA", "harga": 200 * 1000000, "row": 3},
      {"merk": "MAZDA", "harga": 300 * 1000000, "row": 2},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title + " Sesi 3"),
      ),
      body: Column(
        children: [
          Text(mobil[0]),
          Text(TOYOTA["warna"]),
          Text("${mobil_gabungan[1]["row"]}"),
        ],
      ),
    );
  }
}
