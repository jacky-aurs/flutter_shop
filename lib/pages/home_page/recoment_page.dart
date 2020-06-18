import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/config/colors.dart';
import 'package:shop/config/strings.dart';

class RecommentPage extends StatelessWidget {
  final List mRecommetData;

  const RecommentPage({Key key, this.mRecommetData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(200),
      child: Column(
        children: <Widget>[
          recommnetText(),
          recommnetList(),
        ],
      ),
    );
  }

  //商品推荐
  Widget recommnetText() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 5.0),
      color: KColors.whiteColor,
      child: Text(
        KString.recommetText,
        style: TextStyle(color: KColors.primaryColor, fontSize: 15),
      ),
    );
  }

  Widget _recommentListWidght(BuildContext context, int index) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(8.0),
//        decoration: BoxDecoration(
//            color: KColors.whiteColor,
//            border: Border(left: BorderSide(width: 0.7))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Image.network(
              mRecommetData[index]['image'],
              fit: BoxFit.fitHeight,
              width: 70,
            )),
            Text(
              "¥${mRecommetData[index]['prices']}",
              style: TextStyle(fontSize: 15, color: KColors.priceTextColor),
            ),
          ],
        ),
      ),
    );
  }

  //商品推荐横向数据
  Widget recommnetList() {
    return Container(
      margin: EdgeInsets.all(5.0),
      height: ScreenUtil().setHeight(160),
      child: ListView.builder(
        itemBuilder: _recommentListWidght,
        itemCount: mRecommetData.length,
        scrollDirection: Axis.horizontal,
      ),
    );
//    return ListView.builder(
//      itemBuilder: _recommentListWidght,
//      itemCount: mRecommetData.length,
//      scrollDirection: Axis.horizontal,
//    );
  }
}
