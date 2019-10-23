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
  //*************************************************
  widgetAppBar() {
    return AppBar(
      title: Text("dropdownButton02"),
    );
  }
//*************************************************
  widgetBody(){
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("PageOne"),
            Center(
              child: DropdownButton(
                value: dropdownValue,
                items: listUser.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Row(
                      children: <Widget>[
                        Icon( value.icon ),
                        Text( value.name ),
                      ],
                    ),
                  );
                }).toList(),

                onChanged: (var newValue)  {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },

              ),
            ),
          ]
      ),
    );
  }
}

List<User> listUser = [User("amar", Icons.add),User("hamza", Icons.print),User("samir", Icons.home)];
var dropdownValue = listUser[0];
class User{
  String name;
  IconData icon;
  User(this.name, this.icon);
}