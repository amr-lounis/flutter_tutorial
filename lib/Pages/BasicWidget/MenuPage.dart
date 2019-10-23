import 'package:flutter/material.dart';
import '../Widget/ui_emement/ListTile_Navigator.dart';
import 'dropdownButton01.dart' as dropdownButton01;
import 'dropdownButton02.dart' as dropdownButton02;
import 'grid_view.dart' as grid_view;
import 'image01.dart' as image01;
import 'orientation.dart' as orientation;
import 'scroll_view.dart' as scroll_view;
import 'snak_bar.dart' as snak_bar02;
import 'timer.dart' as timer;
import 'transform.dart' as transform;
import 'wrap01.dart' as wrap01;
import 'wrap02.dart' as wrap02;
import 'ButtonPage.dart' as ButtonPage;
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
            ListTile_Navigator(context,"dropdownButton01",dropdownButton01.PageOne()),
            ListTile_Navigator(context,"dropdownButton02",dropdownButton02.PageOne()),
            ListTile_Navigator(context,"grid_view",grid_view.PageOne()),
            ListTile_Navigator(context,"image01",image01.PageOne()),
            ListTile_Navigator(context,"orientation",orientation.PageOne()),
            ListTile_Navigator(context,"scroll_view",scroll_view.PageOne()),
            ListTile_Navigator(context,"snak_bar02",snak_bar02.PageOne()),
            ListTile_Navigator(context,"timer",timer.PageOne()),
            ListTile_Navigator(context,"transform",transform.PageOne()),
            ListTile_Navigator(context,"wrap01",wrap01.PageOne()),
            ListTile_Navigator(context,"wrap02",wrap02.PageOne()),
            ListTile_Navigator(context,"ButtonPage",ButtonPage.PageOne()),
          ]),
    );
  }

}
