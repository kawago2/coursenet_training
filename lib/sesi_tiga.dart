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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title + " Sesi 3"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: px,
              height: px,
              color: Colors.red,
            ),
            Container(
              width: px,
              height: px,
              color: Colors.blue,
            ),
            Container(
              width: px,
              height: px,
              color: Colors.yellow,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: px,
                  height: px,
                  color: Colors.red,
                ),
                Container(
                  width: px,
                  height: px,
                  color: Colors.blue,
                ),
                Container(
                  width: px,
                  height: px,
                  color: Colors.yellow,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
