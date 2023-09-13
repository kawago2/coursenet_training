import 'package:flutter/material.dart';
import 'dart:ui' as ui;


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_a_photo_outlined),
        title: Text("Widget Sederhana"),
        actions: [
          // maksimal penggunaan actions 5 icon
          Icon(Icons.history),
          Icon(Icons.notifications),
          Icon(Icons.settings),
        ],
      ),
      //   body: Center(
      //     child: Text(
      //       "Course Net X Prakerja",
      //       style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.w800,
      //         fontStyle: FontStyle.italic,
      //         foreground: Paint()
      //           ..shader = ui.Gradient.linear(
      //             const Offset(100, 20),
      //             const Offset(250, 20),
      //             <Color>[
      //               Colors.red,
      //               Colors.yellow,
      //             ],
      //           ),
      //       ),
      //     ),
      //   ),
      //   body: Column(
      //     children: [
      //       ElevatedButton(
      //         onPressed: () {
      //           print("Elevated Button");
      //         },
      //         child: Text("Submit"),
      //       ),
      //       IconButton(
      //         onPressed: () {
      //           print("Icon Button");
      //         },
      //         icon: Icon(Icons.account_circle_rounded),
      //       ),
      //       TextButton(
      //         onPressed: () {
      //           print("Text Button");
      //         },
      //         child: Text("Submit"),
      //       ),
      //     ],
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       print("Floating Button");
      //     },
      //     child: Icon(Icons.add),
      //   ),
      //   body: Column(
      //     children: [
      //       Image.asset("assets/images/logo.png"),
      //       Image.network(
      //           "https://logowik.com/content/uploads/images/flutter5786.jpg"),
      //     ],
      //   ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: Text("Column 1"),
                ),
                Icon(Icons.add),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Text("Column 2"),
                ),
                Icon(Icons.notifications),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Text("Column 3"),
                ),
                Icon(Icons.settings),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
