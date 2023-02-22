import 'package:explore_notes_app/models/notes_for_listing.dart';
import 'package:explore_notes_app/screens/note_modify.dart';
import 'package:flutter/material.dart';
import 'package:explore_notes_app/views/note_delete.dart';

class NoteList extends StatelessWidget {

  final notes = [
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
      body: ListView.separated(
          itemBuilder: (_, index) {
            return Dismissible(
              key: ValueKey(notes[index].noteID),
              direction: DismissDirection.startToEnd,
              onDismissed: (direction){},
              confirmDismiss: (direction) async{
                final result = await showDialog(
                    context: context,
                    builder: (_)=> NoteDelete(),
                );
                return result;
                print(result);
            },
              child: ListTile(
                title: Text(notes[index].noteTitle,
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
              ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => NoteModify(notes[index].noteID))
                  );
                },
                subtitle: Text(
                  'Last edited on ${formatDateTime(notes[index].lastEditedDateTime)}'
                ),
              ),
            );
          },
          separatorBuilder: (_, __) => Divider(height: 1, color: Colors.blue,),
          itemCount: notes.length
      ),
    );
  }
}
