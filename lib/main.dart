import 'package:flutter/material.dart';
import 'package:flutter_bottom/detailpages.dart';
import 'package:get/get.dart';

import 'heroanimation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("haha")),
          body: MyStatefulWidget(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0 : Home', style: optionStyle),
    Text('Index 1 : Business', style: optionStyle),
    Text('Index 2 : School', style: optionStyle),
    Text('Index 3 : OOO', style: optionStyle),
    Text('Index 4 : XXX', style: optionStyle)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: const <Widget>[
        Center(
          child: Text("first"),
        ),
        Center(
          child: Text("second"),
        ),
        Center(
          child: Text('third'),
        )
      ],
    );
  }
}

// Widget getBottomNavigation() {
//   return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: ImageIcon(AssetImage("assets/bottom_account.png"),
//                   color: Colors.black),
//               label: ""),
//           BottomNavigationBarItem(
//               icon: ImageIcon(AssetImage("assets/bottom_list.png"),
//                   color: Colors.black),
//               label: ""),
//           BottomNavigationBarItem(
//               icon: ImageIcon(AssetImage("assets/bottom_lobby.png"),
//                   color: Colors.black),
//               label: ""),
//           BottomNavigationBarItem(
//               icon: ImageIcon(AssetImage("assets/bottom_message.png"),
//                   color: Colors.black),
//               label: ""),
//           BottomNavigationBarItem(
//               icon: ImageIcon(AssetImage("assets/bottom_selected_match.png"),
//                   color: Color(0xFFFF8997)),
//               label: ""),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
// }

Widget buildBodyWidget() {
  return InkWell(
    onTap: () {
      Get.to(DetailPages());
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
