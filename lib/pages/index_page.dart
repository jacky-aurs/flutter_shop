import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import 'package:shop/config/strings.dart';
import 'package:shop/pages/category_page.dart';
import 'package:shop/pages/home_page.dart';
import 'package:shop/pages/member_page.dart';
import 'package:shop/pages/shop_car_page.dart';
import 'package:shop/provide/current_index_provide.dart';

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

  final List<Widget> tabBoides = [
    HomePage(),
    CategoryPage(),
    ShopCarPage(),
    MemberPage()
  ];

  @override
  Widget build(BuildContext context) {
    //屏幕适配
    ScreenUtil.instance =ScreenUtil(height: 1334,width: 750)..init(context);
    return Provide<CurrentIndexProvide>(
      builder: (context, child, val) {
        int _currentIndex =
            Provide.value<CurrentIndexProvide>(context).currentIndex;
        return Scaffold(
          backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
          bottomNavigationBar: BottomNavigationBar(
            items: bottonTabs,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) {
              debugPrint(String.fromCharCode(index));
              Provide.value<CurrentIndexProvide>(context).changeIndex(index);
            },
          ),
          body: IndexedStack(
            children: tabBoides,
            index: _currentIndex,
          ),
        );
      },
    );
  }
}
