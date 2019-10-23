import 'package:flutter/material.dart';
///////////////////////////////////////////////////////////////////////////////
class PageOne extends StatefulWidget {
  @override
  createState() => _PageOneState();
}
class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext vvv) {
    return Scaffold(
      appBar: widgetAppBar(),
      body: widgetBody(vvv),
    );
  }
  widgetAppBar() {
    return AppBar(
      title: Text("PageOne"),
    );
  }
  bool boolFavorite = false;
  widgetBody(BuildContext ccc) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.navigate_next),
              onPressed: () {

              },
            ),
            IconButton(icon: Icon(boolFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              setState(() {
                   boolFavorite= !boolFavorite;
              });
            }
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Text('color of theme'),
              onPressed: () { },
            ),
            ButtonBar(children: <Widget>[
              IconButton(onPressed: (){},icon: Icon(Icons.add)),
              IconButton(onPressed: (){},icon: Icon(Icons.edit)),
              IconButton(onPressed: (){},icon: Icon(Icons.delete))
            ],),
            Container(width: 50,height: 50,color: Colors.blue, child: InkWell(onTap: (){},),),

          ]
    ),
    );
  }
}

