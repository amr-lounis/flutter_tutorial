import 'package:flutter/material.dart';

class BasicAnimmation extends StatefulWidget {
  @override
  createState() => _BasicAnimmationState();
}
class _BasicAnimmationState extends State<BasicAnimmation> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  double value =200.0;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 3));
    Tween<double> tween = Tween<double>(begin: 100.0, end: 300.0);
    animation = tween.animate(animationController)..addListener((){
      setState(() {
        value = animation.value;
      });
    });
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
      title: Text("animation02"),
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
