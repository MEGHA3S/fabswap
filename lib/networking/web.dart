//web connectivity files
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/feed_model.dart';
import '../variables/global_variable.dart';

Future<void> functionFetch() async {
  print('inside function');
  http.Response response = await http.get(Uri.parse('http://10.0.2.2:8000/api/UserController'));
  print(response.body);
}

Future<void> functionStore(String name,String email , String password, context) async {

  http.Response response = await http.post(Uri.parse('http://10.0.2.2:8000/api/UserController'),body: {'name':name,'email':email,'password':password});
  print(response.body);
  Navigator.popAndPushNamed(context, '/feed');
}


Future<void> functionFetchFeed() async {
  print('inside function');
  http.Response response = await http.get(Uri.parse('http://10.0.2.2:8000/api/FeedController'));
  feedModel= FeedModel.fromJson(jsonDecode(response.body));

  print(feedModel.response![0].dressName);
}
