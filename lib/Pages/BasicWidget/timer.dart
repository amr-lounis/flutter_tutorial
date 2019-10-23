import 'dart:async';

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
  //*************************************************
  widgetAppBar() {
    return AppBar(
      title: Text("timer"),
    );
  }
  //*************************************************
  String titel ="presse and wait 5 second";
  bool loaded= true;
  int count =0;
  widgetBody(){
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(titel),
            FloatingActionButton(
              child: loaded ? Text("Run") : CircularProgressIndicator(),
              onPressed: (){
                this.setState((){
                  loaded=false;
                  Timer(Duration(seconds: 5),(){
                    this.setState(() {
                      loaded= true;
                      titel ="new titel ${count}";
                      count ++;
                    });
                  });
                });
              },
            )
          ]
      ),
    );
  }
}
