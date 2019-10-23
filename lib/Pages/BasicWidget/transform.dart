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
    return Scaffold(
      appBar: widgetAppBar(),
      body: widgetBody(),
    );
  }
  //*************************************************
  double sliderValue=1;
  widgetAppBar() {
    return AppBar(
      title: Container(
        height: 20,
        color: Colors.red,
        child: Slider(
          min: 0,
          max: 1,
          value: sliderValue,
          onChanged: (v){
            setState((){
              sliderValue=v;
            });
          },
        ),
      ),
    );
  }
  //*************************************************
widgetBody(){
  return Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Transform.rotate(
            angle: sliderValue*(3.14*4),
            child: Container(
              color: Colors.purple,
              height: 100.0,
              width: 100.0,
              child: Chip(label: Icon(Icons.print)),
            ),
          ),
          Transform.scale(
            scale: sliderValue*2,
            child: Container(
              color: Colors.purple,
              height: 100.0,
              width: 100.0,
              child: Chip(label: Icon(Icons.print)),
            ),
          ),
          Transform.translate(
            offset: Offset(sliderValue*100, 0.0),
            child: Container(
              color: Colors.purple,
              height: 100.0,
              width: 100.0,
              child: Chip(label: Icon(Icons.print)),
            ),
          )

        ]
    ),
  );
}
}
