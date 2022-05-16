import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  HomePage({Key? key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text('跳转到搜索界面'),
          onPressed: () => Navigator.pushNamed(context, '/search'),
        ),
        const Text('搜索')
      ],
    ));
  }
}
