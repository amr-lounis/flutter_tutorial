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
                _showMaterialDialog(context);
              },
            )
          ]
      ),
    );
  }
  void _showMaterialDialog( BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Material Dialog'),
            content: Text('This is the content of the material dialog'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close')),
              FlatButton(
                onPressed: () {
                  print('HelloWorld!');
                  Navigator.pop(context);
                },
                child: Text('Print HelloWorld!'),
              )
            ],
          );
        });
  }
}

