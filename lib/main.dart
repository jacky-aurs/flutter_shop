import 'package:flutter/material.dart';
import 'index_config.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: KColors.primaryColor,//主题颜色
        )
      ),
      home: HomeView(),
    );
  }
}


class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(KString.HomeTitle),//女装商城
      ),
    );
  }
}