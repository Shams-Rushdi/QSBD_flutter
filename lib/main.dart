import 'package:flutter/material.dart';
import 'package:flutter_test1/Screen/Class/Screen/ListViewScreen.dart';

import 'Screen/Class/bottonNavigationBar.dart';
import 'Screen/Class/widget.dart';
import 'Screen/HomePage/homepage.dart';
import 'Screen/ProjectWork/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewScreen(),
    );
  }
}
