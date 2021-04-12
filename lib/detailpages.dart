import 'package:flutter/material.dart';

class DetailPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("動畫測試組"),
      ),
      body: buildCurrentWidget(context),
    );
  }
}

Widget buildCurrentWidget(BuildContext context) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildHero(context),
        SizedBox(
          width: 22,
        )
      ],
    ),
  );
}

Hero buildHero(BuildContext context) {
  return Hero(
    tag: "fly",
    child: InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Image.asset("assets/button_like.png", fit: BoxFit.fill),
    ),
  );
}
