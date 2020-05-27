import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/config/strings.dart';

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

  @override
  Widget build(BuildContext context) {}
}
