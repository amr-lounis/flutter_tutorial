import 'dart:async' show Future;
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
  String v1="";
  widgetBody() {
    return Scrollbar(child:
      Container(
      height: MediaQuery.of(context).size.height < 500 ? MediaQuery.of(context).size.height *0.5:500,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.dstATop),
              image:  AssetImage('assets/images/a.jpg'),
            )
        ),
      child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "this is first input",filled: true,fillColor: Colors.white),
              onChanged: (String value){
                v1 =  value;
                setState(() {});
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "this is first input",filled: true,fillColor: Colors.white),
              keyboardType: TextInputType.number,
              onChanged: (String value){
                v1 =  value;
                setState(() {});
              },
            ),
            Text(v1),
            SwitchListTile(
              value: true,
              title: Text("titel"),
              onChanged: (bool value){
              },
            ),
//            Switch(
//              value: true,
//              onChanged: (bool value){
//              },
//            ),
//            Container(
//              child: Text("sdsdsds",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w100),),

//            )
          ]),
    ),);
  }
}