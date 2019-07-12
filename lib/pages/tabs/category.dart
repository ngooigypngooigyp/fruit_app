import 'package:flutter/material.dart';
import '../Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.0,
                  tabs: <Widget>[
                    Tab(text: '热销'),
                    Tab(text: '推荐'),
                    Tab(text: '精品'),
                    Tab(text: '国际'),
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('跳转到表单页面'),
                  onPressed: (){
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //      builder: (context){
                    //        return FormPage(title: '我是跳转传值');
                    //      }
                    //   ),
                    // );
                    Navigator.pushNamed(context, '/form');
                  },
                  color: Theme.of(context).accentColor,
                  textTheme: ButtonTextTheme.primary,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('跳转到表单页面'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/form');
                  },
                  color: Theme.of(context).accentColor,
                  textTheme: ButtonTextTheme.primary,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('跳转到表单页面'),
                  onPressed: (){
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //      builder: (context){
                    //        return FormPage(title: '我是跳转传值');
                    //      }
                    //   ),
                    // );
                    Navigator.pushNamed(context, '/form');
                  },
                  color: Theme.of(context).accentColor,
                  textTheme: ButtonTextTheme.primary,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('跳转到表单页面'),
                  onPressed: (){
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //      builder: (context){
                    //        return FormPage(title: '我是跳转传值');
                    //      }
                    //   ),
                    // );
                    Navigator.pushNamed(context, '/form');
                  },
                  color: Theme.of(context).accentColor,
                  textTheme: ButtonTextTheme.primary,
                ),
              ],
            ),
          ],
        ),
      ),
    );    
  }
}