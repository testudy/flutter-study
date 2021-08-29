import 'package:flutter/material.dart';
import './HomePage.dart';

class WriteWordApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学习汉字',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(title: '学习汉字首页'),
    );
  }
}
