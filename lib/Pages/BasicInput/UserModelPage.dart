import 'package:flutter/material.dart';
import '../../Model/UserModel.dart';
import '../../Model/UserModelHelpper.dart' as UserModelHelpper;
///////////////////////////////////////////////////////////////////////////////
class PageOne extends StatefulWidget {
  @override
  createState() => _PageOneState();
}
class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(),
      body: widgetBody(),
    );
  }
  widgetAppBar() {
    return AppBar(
      title: Text("PageOne"),
    );
  }
  widgetBody() {
    return Center(child: ListView(children: <Widget>[
      Text(UserModelHelpper.get_user(0).name),
      FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> PageTow()));
      },)
    ],
    ),
    );
  }
}
/////////////////////////////////////////////////////
class PageTow extends StatefulWidget {
  @override
  createState() => _PageTowState();
}
class _PageTowState extends State<PageTow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(),
      body: widgetBody(),
    );
  }
  widgetAppBar() {
    return AppBar(
      title: Text("PageTow"),
    );
  }

  final TextEditingController _nameController = TextEditingController();
  widgetBody() {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(decoration: InputDecoration(labelText: UserModelHelpper.get_user(0).name),controller: _nameController,),
            RaisedButton(
              child: Text("change value"),
              onPressed: () {
                UserModelHelpper.updateUser(0, UserModel(name: _nameController.text));
                Navigator.pop(context);
              },
            )
          ]),
    );
  }
}