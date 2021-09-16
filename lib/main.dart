import 'package:flutter/material.dart';
import 'package:portfolio/Pages/cover_page/cover_page.dart';
import 'package:portfolio/menu_animations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            MenuAnimation(),
            CoverPage(),
          ],
        ),
      ),
    );
  }
}
