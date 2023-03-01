import 'package:flutter/material.dart';
import 'package:explore_notes_app/models/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post>? posts;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Posts'
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            return Container(
              child: Text(
                'Hi'
              ),
            );
          },
          itemCount: 10,
      ),
    );
  }
}
