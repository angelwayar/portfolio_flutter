import 'package:flutter/material.dart';
import 'package:portfolio/Pages/albumMatrix4/album.dart';

class AlbumMatrix4 extends StatefulWidget {
  AlbumMatrix4({Key? key}) : super(key: key);

  @override
  State<AlbumMatrix4> createState() => _AlbumMatrix4State();
}

class _AlbumMatrix4State extends State<AlbumMatrix4> {
  late PageController _pageController;
  double currentPage = 0.0;

  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300.0,
              color: Colors.black,
              child: PageView.builder(
                  itemCount: album.length,
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return AlbumCard(index: index, currentPage: currentPage);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final int index;
  final double currentPage;

  AlbumCard({
    Key? key,
    required this.index,
    required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double relativePosition = index - currentPage;

    return Container(
      width: 150.0,
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.003)
          ..scale((1 - relativePosition.abs()).clamp(0.2, 0.6) + 0.4)
          ..rotateY(relativePosition),
        child: Container(
          margin: EdgeInsets.only(top: 20, bottom: 20, left: 5, right: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              image: DecorationImage(
                  image: AssetImage(album[index]), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
