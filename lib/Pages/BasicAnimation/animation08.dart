import 'package:flutter/material.dart';

class BasicAnimmation extends StatefulWidget {
  @override
  createState() => _BasicAnimmation();
}

class _BasicAnimmation extends State<BasicAnimmation> {
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
      title: Text("animation08"),
    );
  }

  //*************************************************
  double size = 100;
  widgetBody() {
    return Center(
      child: Stack(
        children: <Widget>[
            GestureDetector(
              onTap: (){
                setState(() {
                  size = size >=300 ? 100:300;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                curve: Curves.bounceOut,//optionel
                width: size,
                height: size,
                decoration:
                BoxDecoration(color: Colors.red),
              ),
            ),
        ],
      ),
    );
  }
}
