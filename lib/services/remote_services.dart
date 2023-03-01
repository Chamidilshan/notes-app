import 'package:flutter/material.dart';
import 'package:explore_notes_app/models/post.dart';
import 'package:http/http.dart';

class RemoteService{
  Future<List<Post>?> getPosts() async{
    //var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await get(uri);
    if(response.statusCode == 200){
      var json = response.body;
      return postFromJson(json);
    }
  }
}