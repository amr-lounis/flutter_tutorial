import 'package:flutter/material.dart';
import '../Widget/ui_emement/ListTile_Navigator.dart';
import 'page00.dart' as page00;
import 'page01.dart' as page01;
import 'PageImageSender.dart' as PageImageSender;
import 'drawable01.dart' as drawable01;
import 'tab.dart' as tab;
import 'pageView.dart' as pageView;
import 'Dialog.dart' as Dialog;
import 'Modal.dart' as Modal;
import 'animationHero01.dart' as animationHero01;
import 'animationHero02.dart' as animationHero02;

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
            ListTile_Navigator(context,"BasicPage00 StatefulWidget",page00.PageOne()),
            ListTile_Navigator(context,"BasicPage01 StatelessWidget",page01.PageOne()),
            ListTile_Navigator(context,"PageImageSender",PageImageSender.PageOne()),
            ListTile_Navigator(context,"drawable01",drawable01.PageOne()),
            ListTile_Navigator(context,"PageViwe",pageView.PageOne()),
            ListTile_Navigator(context,"Tab",tab.PageOne()),
            ListTile_Navigator(context,"Dialog",Dialog.PageOne()),
            ListTile_Navigator(context,"Modal",Modal.PageOne()),
            ListTile_Navigator(context,"animationHero01",animationHero01.PageOne()),
            ListTile_Navigator(context,"animationHero02",animationHero02.PageOne()),
          ]),
    );
  }
}
