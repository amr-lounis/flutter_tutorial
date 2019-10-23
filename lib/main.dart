import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'Pages/MainMenuPage.dart' as  MainMenu;
import 'Pages/BasicPages/PageImageReceiver.dart' as PageImageReceiver;
/////////////////////////////////////////////////////
//void main() => runApp(MaterialApp(home: PageOne(),));
/////////////////////////////////////////////////////
//void main() {
//  debugPaintSizeEnabled = true;
//  debugPaintBaselinesEnabled = true;
//  debugPaintPointersEnabled = true;
//  runApp(MyApp());
//}

//
/////////////////////////////////////////////////////
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowMaterialGrid: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
          fontFamily: 'Amiri',
          accentColor: Colors.blue,
          buttonColor: Colors.red
      ),
      home: MainMenu.PageOne(),
      routes: <String, WidgetBuilder>{
        "/MainMenu":(BuildContext context)=> MainMenu.PageOne(),
      },
      onGenerateRoute: (RouteSettings setting) {
        final List <String> pathElements = setting.name.split("::");// /path/value
        if(pathElements.length == 2) {
          print("${pathElements[0]}     ::      ${pathElements[1]}");
          return MaterialPageRoute<String>(builder: (context)=> PageImageReceiver.PageImageReceiver(pathElements[1]));
        }
        else return null;
      },
      onUnknownRoute:(RouteSettings setting) {
        return MaterialPageRoute<String>(builder: (context)=> MainMenu.PageOne());//error page
      } ,
    );
  }
}
