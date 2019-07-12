import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转到搜索页面'),
          onPressed: (){
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //   ),
            // );
            Navigator.pushNamed(context, '/search',arguments:{'id':4321});
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('跳转到商品页面'),
          onPressed: (){
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //   ),
            // );
            Navigator.pushNamed(context, '/product');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('跳转到appBarDemo'),
          onPressed: (){
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //   ),
            // );
            Navigator.pushNamed(context, '/appBarDemo');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到TabBarController'),
          onPressed: (){
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //   ),
            // );
            Navigator.pushNamed(context, '/tabBarController');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}
