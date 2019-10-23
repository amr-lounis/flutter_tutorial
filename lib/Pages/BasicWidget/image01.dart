import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: PageOne()));
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
      title: Text("image01"),
    );
  }
  //*************************************************
  widgetBody() {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      Container(
          width: 150.0,
          height: 150.0,
          decoration: new BoxDecoration(
              border: new Border.all(color: Colors.blueAccent)
          ),
          child: ClipRRect(
            borderRadius: new BorderRadius.circular(8.0),
            child: Image(
                height: 100,
                width: 100,
                image: NetworkImage("https://cdn1.techadvisor.co.uk/cmsdata/features/3681165/youtube-logo-png-2069_thumb800.png"))
        ),
      ),
          ]),
    );
  }
}
