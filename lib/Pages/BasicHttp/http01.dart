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
    return _progressBarActive == true ? Center(child: CircularProgressIndicator()):Center(
         child: ListView( children: <Widget>[
           RaisedButton(onPressed: () {
             String url = "https://www.googleapis.com/books/v1/volumes?q={http}";
             //String url = "http://192.168.1.199:8080/index.php?value=10";
             Map<String,dynamic>  da1= { 'var5':'33','var4':'44', };
             List<Map<String,dynamic>>  da2= [da1,da1,da1];
             Map<String,dynamic>  dataPost= { 'var1':'11','var2':'${da2}', };
             sendRequest(url: url);
           }, ),
           Text(responseString ,style: TextStyle(fontSize: 30),)
         ],),
    );
  }

  bool _progressBarActive = false;
  sendRequest({String url,Map map})async{
    setState(() {
      _progressBarActive = true;
    });
    String response = "";
    try {
      final duration = const Duration(seconds: 10);
      final request = map == null ? await http.get(url).timeout(duration): await http.post(url,body: convert.jsonEncode(map)).timeout(duration) ;
      if (request.statusCode == 200) { response = request.body.toString(); }
      else { print("Request failed with status code: ${request.statusCode}."); }
    }catch( e ){ print(e.toString()); }
    setState(() {
      _progressBarActive = false;
    });
    try{
      final Map<String,dynamic> responseData = convert.jsonDecode(response);
      final itemCount = responseData['totalItems'];
      setState(() {
        responseString = itemCount.toString();
      });
    }catch( e ){ print(e.toString());responseString =""; }
  }
}