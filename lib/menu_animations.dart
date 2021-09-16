import 'package:flutter/material.dart';
import 'package:portfolio/Pages/albumMatrix4/album_matrix4.dart';

class MenuAnimation extends StatelessWidget {
  const MenuAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AlbumMatrix4())),
              child: Text("Move Album with Matrix4"))
        ]),
      ),
    );
  }
}
