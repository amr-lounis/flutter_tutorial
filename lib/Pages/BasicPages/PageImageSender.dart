import 'dart:async';
import 'package:flutter/material.dart';
import 'PageImageReceiver.dart';
void main() => runApp(MaterialApp(home: PageOne(),));

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(),
      body:widgetBody(context),
    );
  }
  widgetAppBar(){
    return AppBar(title: Text("send received value"));
  }
  var ListViewP = [
    "https://www.catster.com/wp-content/uploads/2018/07/Savannah-cat-long-body-shot.jpg",
    "https://media.wired.com/photos/59bafdf204afdc5248726f5c/master/w_582,c_limit/BMW-TA.jpg",
  ];
  widgetBody(BuildContext context){
    int i = 0;
    return ListView(
      children: <Widget>[
        ...(ListViewP as List<String>).map((v){
          return listTileItem(context,v);
        }),
      ],
    );
  }

  ListTile listTileItem(BuildContext context , String p_imgURL) {
    return ListTile(
      leading : InkWell(
        onTap: (){
          Navigator.pushNamed<String>(context, "/PageImageReceiver::${p_imgURL}").then((String value){
            print("received : ${value}");
          });
//          Navigator.push<String>(context, MaterialPageRoute(builder:(BuildContext context)=>PageImageReceiver( p_imgURL)))
//              .then((String value){
//            print("received : ${value}");
//          });
        },
        child: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(p_imgURL
                  ))
          ),
        ),
      ),
      title: Text("hhhh"),
    );
  }
}