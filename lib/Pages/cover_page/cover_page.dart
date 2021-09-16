import 'package:flutter/material.dart';

class CoverPage extends StatefulWidget {
  CoverPage({Key? key}) : super(key: key);

  @override
  State<CoverPage> createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    _animation = Tween(begin: 0.0, end: 2.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _radius = 0.0;
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Transform(
          transform:
              Matrix4.translationValues(_animation.value * 110.0, 0.0, 0.0)
                ..scale(1.0 - (0.031 * _animation.value)),
          child: GestureDetector(
            onHorizontalDragUpdate: (details) {
              if (details.delta.dx < 0) {
                _animationController.reverse();
                _radius = 0.0;
              } else if (details.delta.dx > 0) {
                _animationController.forward();
                _radius = 20.0;
              }
            },
            child: AnimatedContainer(
              child: Center(
                child: Text(
                  "Portada",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(_radius),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 8,
                    )
                  ]),
              duration: Duration(milliseconds: 250),
            ),
          ),
        );
      },
    );
  }
}
