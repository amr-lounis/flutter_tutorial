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
  double sliderValue = 1;
  widgetAppBar() {
    return AppBar(
        title: Container(
            height: 20,
            color: Colors.red,
            child : Slider(
              min: 1,
              max: 4,
              activeColor: Colors.amber,
              value: sliderValue,
              onChanged: (v) {
                setState(() {
                  sliderValue = v;
                });
              }),
        )
    );
  }
  //*************************************************
  widgetBody() {
    return GridView.count(
      crossAxisCount: sliderValue.toInt(),
      childAspectRatio: 16.0 / 9.0,
      children: <Widget>[
        Card(
          child: Center(
            child: Text("DATA"),
          ),
        ),
        Card(
          child: Center(
            child: Text("DATA2"),
          ),
        ),
      ],
    );
  }
}
