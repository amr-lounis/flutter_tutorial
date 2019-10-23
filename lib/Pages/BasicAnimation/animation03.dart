import 'package:flutter/material.dart';

class BasicAnimmation extends StatefulWidget {
  @override
  createState() => _BasicAnimmation();
}
class _BasicAnimmation extends State<BasicAnimmation> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  double value =100.0;
  var curvedAnimation;
  var tween;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 3));
    curvedAnimation = CurvedAnimation(parent: animationController,curve:Curves.bounceIn);
    tween = Tween<double>(begin: 100.0, end: 300.0).animate(curvedAnimation);
    tween.addListener((){
      setState(() {
        value = tween.value;
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
      title: Text("animation03"),
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
                size: value,
              )
            ]),
      ),
    );
  }
}
