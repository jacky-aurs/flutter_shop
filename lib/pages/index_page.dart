import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:shop/config/strings.dart';
import 'package:shop/pages/category_page.dart';
import 'package:shop/pages/home_page.dart';
import 'package:shop/pages/member_page.dart';
import 'package:shop/pages/shop_car_page.dart';

class IndexPage extends StatelessWidget {
  final List<BottomNavigationBarItem> bottonTabs = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home), title: Text(KString.HomeTitle) //首页
        ),
    BottomNavigationBarItem(
        icon: Icon(Icons.category), title: Text(KString.CategoryTitle) //分类
        ),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        title: Text(KString.ShoppingCartTitle) //购物车
        ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person), title: Text(KString.MemberTitle) //会员中心
        ),
  ];

  List<Widget> tabBoides = [
    HomePage(),
    CategoryPage(),
    ShopCarPage(),
    MemberPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Provide(
      // ignore: missing_return
      builder: (context, child, value) {
        //使用provide取值，provide
        int currentIndex = value;
      },
    );
  }
}
