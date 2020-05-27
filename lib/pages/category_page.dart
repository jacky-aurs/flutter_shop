import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/config/strings.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoryPageState();
  }

}

class _CategoryPageState extends State<CategoryPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(KString.CategoryTitle),
    );
  }
}