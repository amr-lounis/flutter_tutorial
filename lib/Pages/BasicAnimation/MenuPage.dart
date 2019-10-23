import 'package:flutter/material.dart';
import 'animation02.dart' as animation02;
import 'animation03.dart' as animation03;
import 'animation04.dart' as animation04;
import 'animation05.dart' as animation05;
import 'animation06.dart' as animation06;
import 'animation07.dart' as animation07;
import 'animation08.dart' as animation08;
import 'animation09.dart' as animation09;
import 'animationIcon.dart' as animationIcon;

import '../Widget/ui_emement/ListTile_Navigator.dart';
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
      title: Text("List Of Animation"),
    );
  }
  //*************************************************
  widgetBody() {
    return Center(
      child: ListView(
          children: <Widget>[
            ListTile_Navigator(context,"animation02",animation02.BasicAnimmation()),
            ListTile_Navigator(context,"animation03",animation03.BasicAnimmation()),
            ListTile_Navigator(context,"animation04",animation04.BasicAnimmation()),
            ListTile_Navigator(context,"animation05",animation05.BasicAnimmation()),
            ListTile_Navigator(context,"animation06",animation06.BasicAnimmation()),
            ListTile_Navigator(context,"animation07",animation07.BasicAnimmation()),
            ListTile_Navigator(context,"animation08",animation08.BasicAnimmation()),
            ListTile_Navigator(context,"animation09",animation09.BasicAnimmation()),
            ListTile_Navigator(context,"animationIcon",animationIcon.BasicAnimmation()),
          ]),
    );
  }
}
