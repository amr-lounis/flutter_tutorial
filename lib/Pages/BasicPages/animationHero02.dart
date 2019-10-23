import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: PageOne(),));

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(),
      body:widgetBody(context),
    );
  }
  widgetAppBar(){
    return AppBar(title: Text("PageOne animationHero02"));
  }
  var ListViewP = [
    "https://www.catster.com/wp-content/uploads/2018/07/Savannah-cat-long-body-shot.jpg",
    "https://media.wired.com/photos/59bafdf204afdc5248726f5c/master/w_582,c_limit/BMW-TA.jpg",
  ];
  widgetBody(BuildContext context){
    int i = 0;
    return ListView(
      children: <Widget>[
        ...(ListViewP as List<String>).map((v){
          return listTileItem(context,v,"${i++}");
        }),
      ],
    );
  }

  ListTile listTileItem(BuildContext context , String p_imgURL, String p_id) {
    return ListTile(
      leading : InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>PageTow(imgURL: p_imgURL,id: p_id,)));
        },
        child: Hero(
          tag: p_id,
          child: Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(p_imgURL
                    ))
            ),
          ),
        ),
      ),
      title: Text("hhhh"),
    );
  }
}
class PageTow extends StatelessWidget {
  final String imgURL;
  final String id;
  const PageTow({Key key,this.imgURL,this.id}): super(key :key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(),
      body:widgetBody(context),
    );
  }
  widgetAppBar(){
    return AppBar(title: Text("PageTow animationHero02"));
  }
  widgetBody(BuildContext context){
    return Hero(
      tag: "$id",
      child: Container(
        child: Image.network(imgURL,width: 300,height: 300,fit: BoxFit.fill,),
      ),
    );
  }
}