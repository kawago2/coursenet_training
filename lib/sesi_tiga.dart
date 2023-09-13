import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

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
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => SecondPage());
            },
            icon: Icon(Icons.arrow_forward_ios),
          )
        ],
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

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read Json"),
      ),
      body: ReadJson(),
    );
  }
}

class ReadJson extends StatefulWidget {
  const ReadJson({super.key});

  @override
  State<ReadJson> createState() => _ReadJsonState();
}

class _ReadJsonState extends State<ReadJson> {
  var datajson = {};
  var regionjson = [];

  Future<void> readJSON() async {
    final String response = await rootBundle.loadString("assets/data.json");
    final data = jsonDecode(response);
    setState(() {
      datajson = data;
    });
  }

  Future<void> RegionJson() async {
    final String response = await rootBundle.loadString("assets/regions.json");
    final regions = jsonDecode(response);
    setState(() {
      regionjson = regions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              readJSON();
            },
            child: Text("get data"),
          ),
          Text("${datajson["name"]}"),
          ElevatedButton(
            onPressed: () {
              RegionJson();
            },
            child: Text("get data"),
          ),
          regionjson.isEmpty
              ? Text("Empty")
              : Expanded(
                  child: ListView.builder(
                    itemCount: regionjson.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          onTap: () {
                            Get.defaultDialog(
                              title: "${regionjson[index]["name"]}",
                              middleText:
                                  "Latitude: ${regionjson[index]["latitude"]}\n" +
                                      "Longitude: ${regionjson[index]["longitude"]}",
                            );
                          },
                          leading: Text('${index + 1}'),
                          title: Text("Provinsi: ${regionjson[index]["name"]}"),
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
