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
    return OrientationBuilder(
        builder: (context,oriontation){
          return Scaffold(
            appBar: widgetAppBar(),
            body: widgetBody(),
            floatingActionButtonLocation: oriontation == Orientation.portrait ? FloatingActionButtonLocation.endFloat:FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FloatingActionButton(onPressed: (){}),
          );
        });
  }
  //*************************************************
  widgetAppBar() {
    return AppBar(
      title: Text("orientation"),
    );
  }
  //*************************************************
  widgetBody() {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("re orientate screen please"),

          ]
      ),
    );
  }
}
