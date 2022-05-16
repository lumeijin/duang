// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:duang/pages/tabs/FormPage.dart';
import 'package:duang/pages/tabs/Search.dart';
import 'package:flutter/material.dart';
import 'pages/Tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      routes: {
        '/search': (context) => const Search(),
        '/form': (context) => const FormPage()
      },
    );
  }
}
