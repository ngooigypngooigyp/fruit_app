import 'package:flutter/material.dart';


class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text('AppBarDemoPage'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              print('menu');
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                print('search');
              },
            ), 
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text:'热门'),
              Tab(text: '时尚',)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一个Tab')
                ),
                ListTile(
                  title: Text('第一个Tab')
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第二个Tab')
                ),
                ListTile(
                  title: Text('第二个Tab')
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}