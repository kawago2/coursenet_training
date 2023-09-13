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
    List mobil = ["TOYOTA", "HONDA", "MAZDA", "MITHUBISI"];
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
      //
      body: ListView.builder(
        itemCount: mobil_gabungan.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Merk: ${mobil_gabungan[index]["merk"]}"),
                Text("Harga: ${mobil_gabungan[index]["harga"]}"),
                Text("Row: ${mobil_gabungan[index]["row"]}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
