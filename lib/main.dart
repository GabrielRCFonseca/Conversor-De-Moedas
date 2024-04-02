import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';


const String request = "https://api.hgbrasil.com/finance/quotations?key=bf08a3b2";

void main() async{

  Uri uri = Uri.parse(request);
  http.Response response = await http.get(uri);
  print(jsonDecode(response.body)["results"]["currencies"]["USD"]);

  runApp(MaterialApp(
    home: Container()
  ));
}