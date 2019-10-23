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
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 3));
    animationController.reverse();
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
      leading: GestureDetector(
        onTap: (){
          animationController.reverse();
          pageController.animateToPage(0, duration: Duration(seconds: 1), curve: Curves.linear);
        },
        child: Center(
          child: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: animationController),
        ),
      ),
      title: Text("animationIcon"),
    );
  }
  //*************************************************
  PageController pageController = PageController();
  widgetBody() {
    return PageView(
      controller: pageController,
      //scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: Colors.amberAccent,
          child: Center(
            child: Column(
              children: <Widget>[
                RaisedButton(onPressed: (){
                  animationController.forward();
                  pageController.animateToPage(1, duration: Duration(seconds: 1), curve: Curves.linear);
                }),
                RaisedButton(onPressed: (){
                  animationController.forward();
                  pageController.animateToPage(2, duration: Duration(seconds: 1), curve: Curves.linear);
                }),
                RaisedButton(onPressed: (){
                  animationController.forward();
                  pageController.animateToPage(3, duration: Duration(seconds: 1), curve: Curves.linear);
                }),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.purple,
        ),
        Container(
          color: Colors.blueAccent,
        ),
      ],
    );
  }

}
