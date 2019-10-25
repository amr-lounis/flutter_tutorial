import 'package:flutter/material.dart';
import '../Widget/ui_emement/ListTile_Navigator.dart';
import 'Map001Page.dart' as Map001Page;


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
            ListTile_Navigator(context,"BasicPage00 StatefulWidget",Map001Page.PageOne()),
          ]),
    );
  }
}
