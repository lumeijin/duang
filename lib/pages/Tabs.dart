// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'tabs/HomePage.dart';
import 'tabs/CategoryPage.dart';
import 'tabs/SettingPage.dart';

class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          iconSize: 36.0, //icon的大小
          fixedColor: Colors.red, //选中的颜色
          type: BottomNavigationBarType.fixed, //配置底部tabs可以有多个按钮
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: '求实'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '个人中心'),
          ]),
    );
  }
}
