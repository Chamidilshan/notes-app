import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create notes',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Note title'
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Note content'
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Submit',
                  )
              ),
            ),
          ],
        ),
      )
    );
  }
}
