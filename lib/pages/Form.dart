import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          // Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text('表单页面'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是表单页面'),
          )
        ]
      )
    );
  }
}