import 'package:flutter/material.dart';
/////////////////////////////////////////////////////
class PageImageReceiver extends StatelessWidget {
  final String imgURL;

  const PageImageReceiver(this.imgURL);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: (){
          print("desable return button");
          Navigator.pop(context,"not do any think");
          return Future.value(false);//every time return false In order to avoid problems
        },
        child:Scaffold(
          appBar: widgetAppBar(),
          body: widgetBody(context),
        )
    );
  }

  widgetAppBar() {
    return AppBar(title: Text("Page Image Receiver"));
  }

  widgetBody(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Image.network(
              imgURL, width: 300, height: 300, fit: BoxFit.fill,),
            ButtonBar(
              children: <Widget>[
                RaisedButton(onPressed: (){
                  Navigator.pop(context,imgURL);
                },
                  child: Text("Return value"),)
              ],
            )
          ],
        )
    );
  }
}