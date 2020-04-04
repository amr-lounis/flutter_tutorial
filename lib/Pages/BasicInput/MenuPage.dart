import 'package:flutter/material.dart';
import '../Widget/ui_emement/ListTile_Navigator.dart';
import 'UserInputViewPage.dart' as UserInputViewPage;
import 'UserInputFormPage.dart' as UserInputFormPage;
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
            ListTile_Navigator(context,"UserInputViewPage",UserInputViewPage.PageOne()),
            ListTile_Navigator(context,"UserInputFormPage",UserInputFormPage.PageOne()),
          ]),
    );
  }
}
