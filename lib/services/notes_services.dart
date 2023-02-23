import 'package:flutter/material.dart';
import 'package:explore_notes_app/models/notes_for_listing.dart';

class NotesService{
  List<NoteForListing> getNotesList(){
    return [
      NoteForListing(
          noteID: '1',
          noteTitle: 'Hello',
          createdDateTime: DateTime.now(),
          lastEditedDateTime: DateTime.now()
      ),
      NoteForListing(
          noteID: '2',
          noteTitle: 'World',
          createdDateTime: DateTime.now(),
          lastEditedDateTime: DateTime.now()
      ),
    ];
  }
}