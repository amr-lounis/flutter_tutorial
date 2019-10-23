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
  widgetBody() {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageTow()));
              },
            )
          ]),
    );
  }
}
/////////////////////////////////////////////////////
class PageTow extends StatefulWidget {
  @override
  createState() => _PageTowState();
}
class _PageTowState extends State<PageTow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(context),
      body: widgetBody(context),
    );
  }
  widgetAppBar(BuildContext context) {
    return AppBar(
      title: Text("PageTow"),
    );
  }
  widgetBody(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.backspace),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ]),
    );
  }
}