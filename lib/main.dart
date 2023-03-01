import 'package:explore_notes_app/screens/home_page.dart';
import 'package:explore_notes_app/services/notes_services.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void setupLocator(){
  GetIt.I.registerLazySingleton(() => NotesService());
  GetIt.instance<NotesService>;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}