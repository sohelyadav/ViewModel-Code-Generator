import 'package:flutter/material.dart';
import 'package:viewmodelcodegen/ui/pages/home/home_view.dart';
import 'package:viewmodelcodegen/utils/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: HomeView(),
    );
  }
}

