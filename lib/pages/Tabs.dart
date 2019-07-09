import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Settings.dart';
import 'tabs/category.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _currentIndex=0;
  List _pageList=[
    HomePage(),
    SettingPage(),
    CategoryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 25.0,
          fixedColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          currentIndex: this._currentIndex,
          onTap:(int index){
            setState(() {
             this._currentIndex=index; 
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分类'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置'),
            ),
          ],
        ),
      ),
    );
  }
}