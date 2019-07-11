import 'package:flutter/material.dart';
import '../Tabs.dart';

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三步-请输入验证码'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text('输入密码完成注册'),
          RaisedButton(
            child: Text('确定'),
            onPressed: (){
              //返回根
              Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context)=> new Tabs(index: 2)),
                (route) =>route == null
              );


              // Navigator.of(context).pop();
            },
          )
        ],
      )    
    );
  }
}