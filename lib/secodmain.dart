import 'package:flutter/material.dart';
import 'package:flutter_bottom/detailpages.dart';
import 'package:get/get.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppBar(),
      body: buildBodyWidget(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
        // foregroundColor: Colors.pink,
        centerTitle: true,
        title: Text("遇見"),
        backgroundColor: Color(0xFFFF8997));
  }
}

Widget buildBodyWidget() {
  return InkWell(
    onTap: () {
      // openPageFunction();
    },
    child: Container(
      padding: EdgeInsets.all(10),
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 12),
            child: Hero(
              tag: "fly",
              child: Image.asset("assets/button_like.png",
                  width: 96, fit: BoxFit.fill, height: 96),
            ),
          )
        ],
      ),
    ),
  );
}

// void openPageFunction() {
//   Navigator.of(context).push(
//     PageRouteBuilder(
//       pageBuilder: (BuildContext context, Animation<double> animation,
//           Animation<double> secondaryAnimation) {
//         return DetailPages();
//       },
//       transitionDuration: Duration(milliseconds: 1800),
//       reverseTransitionDuration: Duration(milliseconds: 1800),
//       transitionsBuilder: (
//         BuildContext context,
//         Animation<double> animation,
//         Animation<double> secondaryAnimation,
//         Widget child,
//       ) {
//         return FadeTransition(
//           opacity: Tween(begin: 0.0, end: 1.0).animate(
//             CurvedAnimation(
//               parent: animation,
//               curve: Curves.fastOutSlowIn,
//             ),
//           ),
//           child: child,
//         );
//       },
//     ),
//   );
// }
