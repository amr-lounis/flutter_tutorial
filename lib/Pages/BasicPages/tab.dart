import 'package:flutter/material.dart';
/////////////////////////////////////////////////////
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: widgetAppBar(),
        body:widgetBody(context),
      ),
    ) ;
  }
  widgetAppBar(){
    return AppBar(
      title: Text(""),bottom: TabBar(tabs: <Widget>[
        Tab(text: "Create",icon: Icon(Icons.create),),
        Tab(text: "Edit",icon: Icon(Icons.edit_attributes)),
    ]),

    );
  }
  widgetBody(BuildContext context){
    return TabBarView(
      children: <Widget>[
        Center(child: Text("tab 1"),),
        Center(child: Text("tab 2"),)
      ],
    );
  }
}
