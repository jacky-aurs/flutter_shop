import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/config/strings.dart';

class ShopCarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShopCarPageState();
  }

}

class _ShopCarPageState extends State<ShopCarPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(KString.ShoppingCartTitle),
    );
  }
}