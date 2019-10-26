import 'package:flutter/material.dart';
///////////////////////////////////////////////////////////////////////////////
class PageOne extends StatefulWidget {
  @override
  createState() => _PageOneState();
}
class _PageOneState extends State<PageOne> {
  //---------------------------------------------------
  var scaffoldKey = new GlobalKey<ScaffoldState>();
  void showSnakeBar({Widget p_widget,int p_time = 1}){
    var s=new SnackBar(
      //action: new SnackBarAction(label: "hello",onPressed: (){ },),
      backgroundColor: Colors.blue,
      content: p_widget,
      duration: Duration(seconds: p_time),
    );
    scaffoldKey.currentState.showSnackBar(s);
  }
//---------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: widgetAppBar(),
      body: widgetBody(),
    );
  }
  //*************************************************
  widgetAppBar() {
    return AppBar(
      title: Text("functions"),
    );
  }
  //*************************************************
  String ssst = "presse";
  widgetBody(){
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text((1<2)?"first is smal":"first is big "),
            //...(array),
            ...(array2[1] as List<Text>).map((p){
              return RaisedButton(onPressed: (){printtt(p.data.toString());},child: p);
            }),
            Text(ssst),
            FloatingActionButton(
              child: Text("Run"),
              onPressed: (){
                showSnakeBar(p_widget:Text(calc(1,2,3,concat)),p_time: 5);
                setState(() {
                  ssst = "ok";
                });
              },
            )
          ]
      ),
    );
  }
  //*************************************************
  String calc(int a,int b,int c,Function op){
    return (op(a,b,3)).toString();
  }
  //@required // use in constrictor
  String concat(@required int a,int b,int c /* notused */){return "${a.toString()}${b.toString()}";}
  //*************************************************
  var array =[Text("01"),Text("02"),Text("03"),Text("04"),Text("05")];
  var array2 =[
    [Text("01"),Text("02"),Text("03"),Text("04"),Text("05")],
    [Text("06"),Text("07"),Text("08"),Text("09"),Text("10")]
  ];
  //
  void printtt(String p_string){
    showSnakeBar(p_widget:Text(p_string),p_time: 1);
  }
}
