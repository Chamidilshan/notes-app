import 'package:explore_notes_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rest API App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}