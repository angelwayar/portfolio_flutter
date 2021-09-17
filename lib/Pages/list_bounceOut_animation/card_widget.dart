import 'dart:math';
import 'package:flutter/material.dart';

class PlasticCard extends StatefulWidget {
  final String text;
  PlasticCard({required this.text});

  @override
  State<PlasticCard> createState() => _PlasticCardState();
}

class _PlasticCardState extends State<PlasticCard> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: _height * 0.3,
          width: _width * 0.8,
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.accents[Random().nextInt(Colors.accents.length)],
            boxShadow: [
              BoxShadow(
                blurRadius: 8,
                color: Colors.grey,
                offset: Offset(0, 4),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
