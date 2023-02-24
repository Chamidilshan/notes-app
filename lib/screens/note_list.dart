import 'dart:convert';

import 'package:explore_notes_app/models/notes_for_listing.dart';
import 'package:explore_notes_app/screens/note_modify.dart';
import 'package:explore_notes_app/services/notes_services.dart';
import 'package:flutter/material.dart';
import 'package:explore_notes_app/views/note_delete.dart';
import 'package:http/http.dart' as http;

class NoteList extends StatelessWidget {

  List<dynamic> users = [];
  final service = NotesService();

  get notes => null;

  String formatDateTime(DateTime dateTime){
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Notes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => NoteModify(''))
          );
        },
      ),
      body: FloatingActionButton(onPressed: fetchUsers),
    );
  }
}

void fetchUsers() async{
  print('fetchUsers called');
  final url = 'https://randomuser.me/api/?results=5';
  final uri = Uri.parse(url);
  final response = await http.get(uri);
  final body = response.body;
  final json = jsonDecode(body);
}
