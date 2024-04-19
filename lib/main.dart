import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

Color randomColor() {
  final Random random = Random();
  return Color.fromRGBO(
    random.nextInt(700),
    random.nextInt(700),
    random.nextInt(700),
    1.0,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter in fun!'),
        ),
        body: ListView.builder(
          itemBuilder: (_, index) {
            return Container(
              color: randomColor(),
              width: 800,
              height: 800,
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.airplanemode_on),
          onPressed: () {
            print('pressed!');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: 'business'),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'school',
            ),
          ],
        ),
        drawer: const Drawer(
          child: Text('YO!'),
        ),
      ),
    );
  }
}
