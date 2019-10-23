import 'package:flutter/material.dart';

class BasicAnimmation extends StatefulWidget {
  @override
  createState() => _BasicAnimmation();
}
class _BasicAnimmation extends State<BasicAnimmation> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<Alignment> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 2));
    final curve = CurvedAnimation(parent: animationController,curve: Curves.bounceInOut);
    Tween<Alignment> tween =  Tween(begin: Alignment.topCenter,end: Alignment.bottomCenter);
    animation = tween.animate(curve);

    animation.addStatusListener((status){
      if(status == AnimationStatus.completed){animationController.reverse();}
      else if(status == AnimationStatus.dismissed){animationController.forward();}
    });
    animationController.forward();
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
      title: Text("animation05"),
    );
  }
  //*************************************************
  widgetBody() {
    return Container(
      color: Colors.amberAccent,
      child: Stack(
        children: <Widget>[
          AnimatedBuilder(
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red
              ),
            ),
            builder: (BuildContext p_context ,Widget p_child ){
              return Align(
                alignment : animation.value,
                child: p_child,
              );
            },
            animation: animation,
          )
        ],
      ),
    );
  }
}
