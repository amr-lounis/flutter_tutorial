import 'package:flutter/material.dart';
//import 'dart:isolate' as isolate;
import 'package:flutter/foundation.dart' as foundation;

///////////////////////////////////////////////////////////////////////////////
class PageOne extends StatefulWidget {
  @override
  createState() => _PageOneState();
}
class _PageOneState extends State<PageOne> {
  //---------------------------------------------------
  var scaffoldKey = new GlobalKey<ScaffoldState>();
  void showSnakeBar({Widget p_widget,int p_time = 1}){
    var s=new SnackBar(
      //action: new SnackBarAction(label: "hello",onPressed: (){ },),
      backgroundColor: Colors.blue,
      content: p_widget,
      duration: Duration(seconds: p_time),
    );
    scaffoldKey.currentState.showSnackBar(s);
  }
//---------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: widgetAppBar(),
      body: widgetBody(),
    );
  }
  //*************************************************
  widgetAppBar() {
    return AppBar(
      title: Text("isolate"),
    );
  }
  //*************************************************
  String ssst = "presse";
  int count =0;
  widgetBody(){
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(ssst),
            FloatingActionButton(
              child: Text("Run"),
              onPressed: ()async{
                String v = await foundation.compute(blockApp, "Thread${count.toString()}");
                showSnakeBar( p_widget:Text(v),p_time: 10);

                setState(() {
                  ssst = "ok";
                });
              },
            )
          ]
      ),
    );
  }
}
String blockApp(String p_name){
  var t1 = DateTime.now();
  for(int i = 0 ; i<1000000000;i++ );
  var t2 = DateTime.now();
  var t3 = t2.difference(t1).inMilliseconds;
  return "my nam is ${p_name.toString()}   /   lif : ${t3.toString()} Milliseconds";
}