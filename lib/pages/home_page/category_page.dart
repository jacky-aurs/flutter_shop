import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/index_config.dart';

class CategoryPage extends StatelessWidget {
  final List mCateGoryData;

  const CategoryPage({Key key, this.mCateGoryData}) : super(key: key);

  Widget _ItemBuilder(BuildContext context, int index) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 30.0,
            height: 30.0,
            child:
                Image.network(mCateGoryData[index]['image'], fit: BoxFit.cover),
          ),
          SizedBox(
            height: 30.0,
            child: Text(
              mCateGoryData[index]['title'],
              style: TextStyle(fontSize: 15, color: KColors.whiteColor),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
      padding: EdgeInsets.only(top: 10, left: 10.0, right: 10.0, bottom: 10.0),
      height: ScreenUtil().setHeight(270),
      decoration: BoxDecoration(
          color: KColors.primaryColor,
          borderRadius: BorderRadius.circular(10.0)),
      child: GridView.builder(
          itemCount: mCateGoryData.length,
          physics: NeverScrollableScrollPhysics(), //禁止滑动
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
          ),
          itemBuilder: _ItemBuilder),
    );
  }
}
