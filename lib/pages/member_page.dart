import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/config/strings.dart';

class MemberPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MemberPageState();
  }

}

class _MemberPageState extends State<MemberPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(KString.MemberTitle),
    );
  }
}