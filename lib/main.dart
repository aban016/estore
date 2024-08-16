
import 'package:estore/screens/shop.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


// { stls } to create this widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-store",
      debugShowCheckedModeBanner: false,
      home: Shop(),
    );
  }
}