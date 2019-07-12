import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Settings.dart';
import 'tabs/category.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key,this.index=0}) : super(key: key);

  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {

  int _currentIndex=0;
  _TabsState(index){
    this._currentIndex=index;
  }
  List _pageList=[
    HomePage(),
    CategoryPage(),
    SettingPage(),   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: DrawerHeader(
                    child: Text('你好flutter'),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/li.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('我的空间'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('用户中心'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心'),
            ),
          ],
        )
      ),
      endDrawer: Drawer(
        child: Text('你好flutter'),
      ),
    );
  }
}