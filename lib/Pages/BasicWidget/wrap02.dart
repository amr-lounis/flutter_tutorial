import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: PageOne()));
///////////////////////////////////////////////////////////////////////////////
class PageOne extends StatefulWidget {
  @override
  createState() => _PageOneState();
}
class _PageOneState extends State<PageOne> {
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
      title: Text("wrap02"),
    );
  }
//*************************************************
  widgetBody() {
    List<List<String>> listOfList = [
      ["user","password","id"],
      ["amar","waw","xxxx"],
      ["loup","wiw","***"],
    ];
    return Table(
      border: TableBorder.all(width: 1,color: Colors.purple),
      defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
      textDirection: TextDirection.ltr,
      children: listOfList.map((row){
        return TableRow(
          children: row.map((v)=>Text(v)).toList(),
        );
      }).toList(),
    );

  }
}