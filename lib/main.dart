import 'package:api/Model/String.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 Future<String> getData ()async{
http.Response response=await http.get(
    Uri.http("http://localhost:23752/","api/Employees"));
print(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APi"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Get Data"),
          onPressed: getData,
        ),
      ),
    );
  }
}
