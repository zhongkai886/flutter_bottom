import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bottom/photohero.dart';

class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic'),
      ),
      body: Center(
        child: PhotoHero(
          photo: 'assets/button_like.png',
          width: 300.0,
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Flppers Page'),
                ),
                body: Container(
                  color: Colors.lightBlueAccent,
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.topLeft,
                  child: PhotoHero(
                    photo: 'assets/button_like.png',
                    width: 100.0,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}
