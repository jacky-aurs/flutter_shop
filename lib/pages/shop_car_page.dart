import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/config/strings.dart';

class ShopCarPage extends StatefulWidget {
  _ShopCarPageState createState() => _ShopCarPageState();
}

class _ShopCarPageState extends State<ShopCarPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(KString.ShoppingCartTitle),
    );
  }
}
