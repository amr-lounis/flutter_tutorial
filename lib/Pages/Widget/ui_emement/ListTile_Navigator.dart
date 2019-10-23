import 'package:flutter/material.dart';

Widget ListTile_Navigator(BuildContext context,String p_titel,Widget p_widget){
  return ListTile(
    title: RaisedButton(
      child: Text(p_titel),
      onPressed: () {
        //Navigator.pushNamed(context, "/PageOne");
        //Navigator.pushReplacement(context, MaterialPageRoute(builder:(BuildContext context)=>p_widget));
        Navigator.push(context, MaterialPageRoute(builder: (context)=> p_widget));
      },
    ),
  );
}