import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?key=bec380a3";

void main() async{
  http.Response response =  await http.get(request);
  print(json.decode(response.body)["results"]);
  runApp(MaterialApp(
    home: Container(),
  ));
}