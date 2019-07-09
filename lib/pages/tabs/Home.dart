import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         SizedBox(height: 200),
         Chip(
           label: Text('${this.countNum}'),
         ),
         SizedBox(height: 200),
         RaisedButton(
           child: Text('按钮'),
           onPressed: (){
             setState((){
               this.countNum++;
             });
           },
         )
       ],
    );
  }
}
