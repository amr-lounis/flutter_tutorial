import 'package:flutter/material.dart';
class PageOne extends StatefulWidget {
  @override
  createState() => _PageOneState();
}
class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext p_context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: widgetAppBar(),
      body: widgetBody(),
    );
  }
  //*************
  widgetAppBar(){
    return AppBar(
      title: Text("snak_bar"),
    );
  }
  //**************
  widgetBody(){
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("PageOne"),
            FloatingActionButton(
              onPressed: (){
                showSnakeBar(Text("hello"));
              },
            ),
            Builder( builder: (bxx)=>RaisedButton(
              textColor: Colors.red,
              child: Text('Submit'),
              onPressed: () =>  Scaffold.of(bxx).showSnackBar(
                SnackBar(
                  content: Text('Scaffold.of'),
                  duration: Duration(seconds: 1),
                ),
              ),
            ),
            )
          ]
      ),
    );
  }
  //---------------------------------------------------
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  void showSnakeBar(Widget p_widget,{int pTime = 1}){
    var s=new SnackBar(
      //action: new SnackBarAction(label: "hello",onPressed: (){ },),
      backgroundColor: Colors.blue,
      content: p_widget,
      duration: Duration(seconds: pTime),
    );
    scaffoldKey.currentState.showSnackBar(s);
  }
  //---------------------------------------------------
}

