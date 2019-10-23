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
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 5));
    final curve = CurvedAnimation(parent: animationController,curve: Curves.linear);
    final Tween<Alignment> tween1 =  Tween(begin: Alignment.topCenter,end: Alignment.bottomCenter);
    final Tween<Alignment> tween2 =  Tween(begin: Alignment.bottomCenter,end: Alignment.bottomLeft);
    final Tween<Alignment> tween3 =  Tween(begin: Alignment.bottomLeft,end: Alignment.centerLeft);
    final Tween<Alignment> tween4 =  Tween(begin: Alignment.centerLeft,end: Alignment.centerRight);
    final Tween<Alignment> tween5 =  Tween(begin: Alignment.centerRight,end: Alignment.topRight);

    var tweensc = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(tween: tween1,weight: 10.0),
      TweenSequenceItem<Alignment>(tween: tween2,weight: 10.0),
      TweenSequenceItem<Alignment>(tween: tween3,weight: 10.0),
      TweenSequenceItem<Alignment>(tween: tween4,weight: 100.0),
      TweenSequenceItem<Alignment>(tween: tween5,weight: 1.0),
    ]);

    animation = tweensc.animate(curve);

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
      title: Text("animation06"),
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
