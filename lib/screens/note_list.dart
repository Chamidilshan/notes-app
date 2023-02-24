import 'dart:convert';
import 'package:explore_notes_app/data_Service.dart';

import 'package:explore_notes_app/data_Service.dart';
import 'package:explore_notes_app/models/notes_for_listing.dart';
import 'package:explore_notes_app/screens/note_modify.dart';
import 'package:explore_notes_app/services/notes_services.dart';
import 'package:flutter/material.dart';
import 'package:explore_notes_app/views/note_delete.dart';
import 'package:http/http.dart' as http;

class NoteList extends StatelessWidget {

  // List<dynamic> users = [];
  // final service = NotesService();
  final dataService = DataService();

  get notes => null;



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
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Make a request',
          ),
          onPressed: _makeRequest,
        ),
      )
    );
  }
}


void _makeRequest() async{
  // final response = dataService.makeRequestToApi();
}