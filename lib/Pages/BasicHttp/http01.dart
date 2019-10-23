import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
///////////////////////////////////////////////////////////////////////////////
class PageOne extends StatefulWidget {
  @override
  createState() => _PageOneState();
}
class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(),
      body: widgetBody(),
    );
  }
  widgetAppBar() {
    return AppBar(
      title: Text("PageOne"),
    );
  }
  String responseString="";
  widgetBody() {
    return Center(
         child: ListView( children: <Widget>[
           RaisedButton(onPressed: ()async{
              final response = await http.get("https://www.googleapis.com/books/v1/volumes?q={http}");
              if (response.statusCode == 200) {
              //print("http : \n ${response.body}.");
              final jsonResponse = convert.jsonDecode(response.body);
              final itemCount = jsonResponse['totalItems'];
              print(itemCount);
              setState(() {
                responseString = itemCount.toString();
              });
              }
              else {
              print("Request failed with status: ${response.statusCode}.");
             }
           },),
           Text(responseString)
         ],),
    );
  }
}