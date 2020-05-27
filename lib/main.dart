import 'package:flutter/material.dart';
import 'package:shop/provide/current_index_provide.dart';
import 'index_config.dart';
import 'package:provide/provide.dart';
void main() {
  var currentIndexProvide = CurrentIndexProvide();
  var provides = Providers();
  provides..provide(Provider<CurrentIndexProvide>.value(currentIndexProvide));
  runApp(ProviderNode(child: MyApp() , providers: provides));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            backgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              color: KColors.primaryColor,//主题颜色
            )
        ),
        home: HomeView(),
      ),
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