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
      title: Text("scroll_view"),
    );
  }
  //*************************************************
  widgetBody() {
    var ListViewP = List.generate(500, (i)=>"Flurtter $i");
    return Row(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: ListViewP.length,
                itemBuilder: (context,i){
                  return Card(
                    child: Text(ListViewP[i].toString()),
                  );
                }),
          ),
        ]

    );
  }
}
