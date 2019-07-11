import 'package:flutter/material.dart';
// import 'pages/Tabs.dart';
import 'routes/routes.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  home: Tabs(),
      initialRoute: '/',   // 初始化加载的路由
      // routes: {
      //   '/form':(context)=>FormPage(),
      //   '/search':(context)=>SearchPage(),
      // },
      onGenerateRoute: onGenerateRoute, 
    );
  }
} 




