import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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
      body: Center(
        child: Text(
          "Course Net X Prakerja",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            foreground: Paint()
              ..shader = ui.Gradient.linear(
                const Offset(100, 20),
                const Offset(250, 20),
                <Color>[
                  Colors.red,
                  Colors.yellow,
                ],
              ),
          ),
        ),
      ),
    );
  }
}
