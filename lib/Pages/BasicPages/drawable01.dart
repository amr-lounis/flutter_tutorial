import 'package:flutter/material.dart';
/////////////////////////////////////////////////////
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: widgetDrawer(),
      appBar: widgetAppBar(),
      body:widgetBody(context),
    );
  }
  widgetDrawer(){
    return Drawer( //endDrawer: ,
      child: ListView(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text("Drawer"),
      )   ,
          DrawerHeader(child: Icon(Icons.print,size: 150,),),
          ListTile(
            selected: true,
            title: Text("Text"),
            onTap:null,
            leading: Icon(Icons.input),
            trailing: Switch(value: true, onChanged: null),
          ),
          AboutListTile(
            child: Text("This is me"),
            aboutBoxChildren: <Widget>[
              Text("hhhhhhhhhhhhhhhhhhhhhhhhh"),
            ],
          )
        ],
      ),
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
                Navigator.pop(context);
              },
            )
          ]
      ),
    );
  }
}
