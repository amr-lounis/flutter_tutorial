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
  //*************************************************
  widgetAppBar() {
    return AppBar(
      title: Text("PageOne"),
    );
  }
  //*************************************************
  PageController pageController = PageController();
  widgetBody() {
    return PageView(
      controller: pageController,
      //scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: Colors.amberAccent,
          child: Center(
            child: Column(
              children: <Widget>[
                RaisedButton(onPressed: (){
                  pageController.animateToPage(1, duration: Duration(seconds: 1), curve: Curves.linear);
                }),
                RaisedButton(onPressed: (){
                  pageController.animateToPage(2, duration: Duration(seconds: 1), curve: Curves.linear);
                }),
                RaisedButton(onPressed: (){
                  pageController.animateToPage(3, duration: Duration(seconds: 1), curve: Curves.linear);
                }),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.purple,
        ),
        Container(
          color: Colors.blueAccent,
        ),
      ],
    );
  }
}
