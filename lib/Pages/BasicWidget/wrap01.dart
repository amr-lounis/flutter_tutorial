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
  widgetAppBar() {
    return AppBar(
      title: Text("wrap01"),
    );
  }
//*************************************************
  widgetBody(){
    return Wrap(
      spacing: 10.0,
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment:WrapAlignment.spaceBetween,
      children: <Widget>[
        Chip(
          label: Text("C++"),
        ),
        Container(
          color: Colors.amber,
          height: 100,
          width: 50,
        ),
        Chip(
          label: Text("C#"),
        ),
        Chip(
          label: Text("java"),
        ),
        Chip(
          label: Text("python"),
        ),
        Chip(
          label: Text("flutte"),
        ),
        Chip(
          label: Text("php"),
          deleteIcon: Icon(Icons.remove),
          onDeleted: (){

          },
        ),
        Chip(
          label: Text("html"),
        ),
        Chip(
          label: Text("ardouino"),
        ),
      ],
    );
  }
}