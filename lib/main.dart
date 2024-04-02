import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


const String request = "https://api.hgbrasil.com/finance/quotations?key=bf08a3b2";

void main() async{

  print(await getData());

  runApp(MaterialApp(
    home: Home(

    )
  ));
}

Future<Map> getData() async{
  Uri uri = Uri.parse(request);
  http.Response response = await http.get(uri);
  return jsonDecode(response.body);
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("\$ Conversor \$"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
    );
  }
}
