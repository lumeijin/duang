import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  CategoryPage({Key? key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
            child: Text('跳转到表单界面'),
            onPressed: () => {Navigator.pushNamed(context, '/form')},
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),
        Text('表单')
      ],
    );
  }
}
