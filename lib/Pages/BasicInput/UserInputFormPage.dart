import 'dart:async' show Future;
import 'package:flutter/material.dart';
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
  String userName="";
   GlobalKey<FormState> _formKey = new GlobalKey();
  widgetBody() {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
      child: Form(
        key: _formKey,
        child: ListView(
            children: <Widget>[
              TextFormField(
                //autovalidate: true,
                validator: (String value){
                  if(value.length <3 ){
                    return 'value is smal';
                  }
                },
                onSaved: (String value){
                  userName = value;
                },
              ),
              RaisedButton(
                child: Text("Ok"),
                onPressed: (){
                  if(!_formKey.currentState.validate())return;
                  _formKey.currentState.save();
                },
              )
            ]),
      ),
      ),
    );
  }
}