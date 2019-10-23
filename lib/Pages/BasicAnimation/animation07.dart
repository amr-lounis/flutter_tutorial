import 'package:flutter/material.dart';

class BasicAnimmation extends StatefulWidget {
  @override
  createState() => _BasicAnimmation();
}

class _BasicAnimmation extends State<BasicAnimmation>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<Alignment> animationAlignment;
  Animation<double> animationWidth;
  Animation<double> animationHigth;
  Animation<BorderRadius> animationBorderRadius;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 15))
          ..addListener(() {
            setState(() {});
          });
    animationAlignment = Tween<Alignment>(
            begin: Alignment.topCenter, end: Alignment.bottomCenter)
        .animate(CurvedAnimation(
            parent: animationController,
            curve: Interval(0.0, 0.3, curve: Curves.bounceOut)));
    animationBorderRadius = Tween<BorderRadius>(
        begin: BorderRadius.circular(50), end: BorderRadius.circular(0.0))
        .animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.3, 0.6, curve: Curves.elasticInOut)));
    animationWidth = Tween<double>(
        begin: 100, end: 300)
        .animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.6, 0.8, curve: Curves.bounceOut)));
    animationHigth = Tween<double>(
        begin: 100, end: 400)
        .animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.8, 1.0, curve: Curves.bounceOut)));

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
      title: Text("animation07"),
    );
  }

  //*************************************************
  widgetBody() {
    return Container(
      color: Colors.amberAccent,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: animationAlignment.value,
            child: Container(
              width: animationWidth.value,
              height: animationHigth.value,
              decoration:
              BoxDecoration(borderRadius: animationBorderRadius.value, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
