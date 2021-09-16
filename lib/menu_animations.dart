import 'package:flutter/material.dart';
import 'package:portfolio/Pages/albumMatrix4/album_matrix4.dart';

class MenuAnimation extends StatelessWidget {
  const MenuAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlbumMatrix4())),
                  child: Text("Move Album with Matrix4")),
              Divider()
            ]),
      ),
    );
  }
}
