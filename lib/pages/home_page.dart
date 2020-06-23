import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/config/strings.dart';
import 'package:shop/index_config.dart';
import 'package:shop/pages/home_page/banner_page.dart';
import 'package:shop/pages/home_page/floor_adv_pic.dart';
import 'package:shop/pages/home_page/floor_one.dart';
import 'package:shop/service/http_service.dart';
import 'dart:convert';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'home_page/category_page.dart';
import 'home_page/recoment_page.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  GlobalKey<RefreshFooterState> _globalKey =
      new GlobalKey<RefreshFooterState>();

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true; //保持状态不会时时刷新
  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    ScreenUtil().init(context);
    return Scaffold(

      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      appBar: AppBar(
        backgroundColor: KColors.primaryColor,
        title: Text(KString.HomeTitle),
      ),
      body: FutureBuilder(

        future: request("getHomeData", FormData: null),
        builder: (context, snapshot) {
          print(snapshot.hasData);
          if (snapshot.hasData) {
            try {
              Map data = new Map.from(json.decode(snapshot.data.toString()));
              List<Map<String, dynamic>> bannerData =
                  (data['data']['bannerData'] as List).cast();
              List<Map<String, dynamic>> catagoryData =
                  (data['data']['catagoryData'] as List).cast();
              List<Map<String, dynamic>> recoment =
                  (data['data']['recoment'] as List).cast();
              List<Map<String, dynamic>> floorPic =
                  (data['data']['floorPic'] as List).cast();
              print("recommen+${recoment}");
              List<Map<String, dynamic>> floor1 =
                  (data['data']['floor1'] as List).cast();
              return EasyRefresh(

                refreshFooter: ClassicsFooter(
                  key: _globalKey,
                  bgColor: Colors.white,
                  moreInfoColor: KColors.primaryColor,
                  textColor: KColors.primaryColor,
                  showMore: true,
                  noMoreText: "",
                  moreInfo: KString.more_info,
                  //加载中
                  loadReadyText: KString.loadReadyText, //正在加载
                ),
                child: ListView(

                  children: <Widget>[

                    BannerPage(
                      mbannerData: bannerData,
                    ),
                    CategoryPage(
                      mCateGoryData: catagoryData,
                    ),
                    RecommentPage(
                      mRecommetData: recoment,
                    ),
                    FloorAdvPic(
                      mFloorAdvPic: floorPic,
                    ),
                    FloorOne(
                      mFoorlOne: floor1,
                    ),
                  ],
                ),
                loadMore: () async {
                  print("loadmore");
                },
              );
            } catch (e) {
              debugPrint(e.toString());
            }
          }
          return Container(
            child: Text("123123"),
          );
        },
      ),
    );
  }
}


/*
*商品推荐
*/
class RecommentWidght extends StatelessWidget {
  final List recomentData;

  const RecommentWidght({Key key, this.recomentData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 0, 10.0),
      decoration: BoxDecoration(
        color: KColors.whiteColor,
        border: Border(
          bottom: BorderSide(width: 0.5, color: KColors.whiteColor),
        ),
      ),
      child: Text(
        "商品推荐",
        style: TextStyle(color: KColors.primaryColor),
      ),
    );
  }
}
