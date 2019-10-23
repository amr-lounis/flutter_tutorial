import 'package:flutter/material.dart';
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
    return AppBar();
  }
  var ListViewP = [
    "https://www.catster.com/wp-content/uploads/2018/07/Savannah-cat-long-body-shot.jpg",
    "https://media.wired.com/photos/59bafdf204afdc5248726f5c/master/w_582,c_limit/BMW-TA.jpg",
  ];
  widgetBody(BuildContext context){
    return ListView(
      children: <Widget>[
        ListTile(
          leading : InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>PageTow()));
            },
            child: Hero(
              tag: "TEST1",
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(ListViewP[0]
                        ))
                ),
              ),
            ),
          ),
          title: Text("hhhh"),
        )
      ],
    );
  }
}
class PageTow extends StatelessWidget {
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
    return Hero(
      tag: "TEST1",
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}