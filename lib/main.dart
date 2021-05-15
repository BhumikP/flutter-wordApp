// import 'dart:js';

import 'package:flutter/material.dart';

import './textSection.dart';
import './titleSection.dart';
import './buttonContext.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo Page',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Layout Demo'),
          ),
          body: ListView(
            children: [
              Image.asset(
                'images/lake.jpg',
                width: 600.0,
                height: 240.0,
                fit: BoxFit.cover,
              ),
              TitleSection(),
              ButtonContext(),
              TextSection(),
            ],
          )),
    );
  }
}
