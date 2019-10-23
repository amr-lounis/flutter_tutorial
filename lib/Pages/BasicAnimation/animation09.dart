import 'package:flutter/material.dart';

class BasicAnimmation extends StatefulWidget {
  @override
  createState() => _BasicAnimmation();
}
class _BasicAnimmation extends State<BasicAnimmation> with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 3),lowerBound: 50,upperBound: 300);
    animationController.addListener((){
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
      title: Text("animation09"),
    );
  }
  //*************************************************
  widgetBody() {
    return Center(
      child: GestureDetector(
        onTap: (){
          if(animationController.status == AnimationStatus.completed){animationController.reverse();}
          else if(animationController.status == AnimationStatus.dismissed){animationController.forward();}
        },
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: animationController.value,
              )
            ]),
      ),
    );
  }
}
