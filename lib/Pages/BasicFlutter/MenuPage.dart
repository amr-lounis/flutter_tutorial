import 'package:flutter/material.dart';
import '../Widget/ui_emement/ListTile_Navigator.dart';
import 'isolate.dart' as isolate;
import 'functions.dart' as functions;
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
      title: Text("List Of Page"),
    );
  }
  widgetBody() {
    return Center(
      child: ListView(
          children: <Widget>[
            ListTile_Navigator(context,"isolate",isolate.PageOne()),
            ListTile_Navigator(context,"functions",functions.PageOne()),
          ]),
    );
  }
}
