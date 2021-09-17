import 'package:flutter/material.dart';
import 'package:portfolio/Pages/list_bounceOut_animation/list_card.dart';

class ListBounceOut extends StatefulWidget {
  ListBounceOut({Key? key}) : super(key: key);

  @override
  State<ListBounceOut> createState() => _ListBounceOutState();
}

class _ListBounceOutState extends State<ListBounceOut> {
  late ScrollController controller;

  @override
  void initState() {
    controller = ScrollController();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                controller
                  ..animateTo(0,
                      duration: Duration(seconds: 10), curve: Curves.bounceOut);
              },
              icon: Icon(Icons.reset_tv))
        ],
      ),
      body: ListView.builder(
        controller: controller,
        itemCount: plasticCard.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return plasticCard[index];
        },
      ),
    );
  }
}
