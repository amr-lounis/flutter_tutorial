import 'package:flutter/material.dart';
/////////////////////////////////////////////////////
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(),
      body:widgetBody(context),
    );
  }
  widgetAppBar(){
    return AppBar();
  }
  widgetBody(BuildContext context){
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("PageOne"),
            FloatingActionButton(
              onPressed: (){

              },
            )
          ]
      ),
    );
  }
}