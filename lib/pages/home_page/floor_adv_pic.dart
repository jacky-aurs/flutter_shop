import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloorAdvPic extends StatelessWidget{
  final List mFloorAdvPic;

  const FloorAdvPic({Key key, this.mFloorAdvPic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5,right: 5),
      height: ScreenUtil().setHeight(130),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      child: InkWell(
        onTap: (){

        },
        child: Image.network(mFloorAdvPic[0]['image'],
        fit: BoxFit.cover,),
      ),
    );
  }
}