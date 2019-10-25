import 'package:flutter/material.dart';
import 'Widget/ui_emement/ListTile_Navigator.dart';
import 'basicFlutter/MenuPage.dart' as BasicFlutter;
import 'basicWidget/MenuPage.dart' as BasicWidget;
import 'BasicAnimation/MenuPage.dart' as BasicAnimation;
import 'BasicPages/MenuPage.dart' as BasicPages;
import 'BasicInput/MenuPage.dart' as BasicInput;
import 'BasicHttp/MenuPage.dart' as BasicHttp;
import 'BasicMap/MenuPage.dart' as BasicMap;
///////////////////////////////////////////////////////////////////////////////
class PageOne extends StatefulWidget {
  PageOne({Key key, this.title}) : super(key: key);
  final String title;
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
      title: Text("List Of Page"),
    );
  }
  //*************************************************
  widgetBody() {
    return Center(
      child: ListView(
          children: <Widget>[
            ListTile_Navigator(context,"basicFlutter", BasicFlutter.PageOne()),
            ListTile_Navigator(context,"basicWidget", BasicWidget.PageOne()),
            ListTile_Navigator(context,"BasicInput",BasicInput.PageOne()),
            ListTile_Navigator(context,"animation",BasicAnimation.PageOne()),
            ListTile_Navigator(context,"BasicPages",BasicPages.PageOne()),
            ListTile_Navigator(context,"BasicHttp",BasicHttp.PageOne()),
            ListTile_Navigator(context,"BasicMap",BasicMap.PageOne()),
          ]),
    );
  }

}
