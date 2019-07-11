import 'package:flutter/material.dart';
import 'package:flutter_app/pages/AppBarDemo.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Tabs.dart';
import '../pages/product.dart';
import '../pages/productInfo.dart';

import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';




//配置路由
final routes = {
  '/':(context,{arguments})=>Tabs(),
  '/form':(context,{arguments})=>FormPage(),
  '/search':(context,{arguments})=>SearchPage(arguments: arguments),
  '/productinfo':(context,{arguments})=>ProductInfoPage(arguments: arguments),
  '/product':(context)=>ProductPage(),
  '/login':(context)=>LoginPage(),
  '/registerFirst':(context)=>RegisterFirstPage(),
  '/registerSecond':(context)=>RegisterSecondPage(),
  '/registerThird':(context)=>RegisterThirdPage(),
  '/appBarDemo':(context)=>AppBarDemoPage(),
};

//固定写法
var onGenerateRoute=(RouteSettings settings){

  final String name = settings.name;

  final Function pageContentBuilder = routes[name];
  if(pageContentBuilder != null){
    if(settings.arguments != null){
      final Route route = MaterialPageRoute(
        builder: (context)=>
        pageContentBuilder(context,arguments: settings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(
        builder: (context)=>
        pageContentBuilder(context));
      return route;
    }
  }
};