import 'package:dio/dio.dart';
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
  //切换保持状态不变
  GlobalKey<RefreshFooterState> _globalKey =
      new GlobalKey<RefreshFooterState>();

  int page = 1;
  List<Map> hotDataList = []; //hotData数据
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true; //保持状态不会时时刷新
  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
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
                    getHotWidght(),
                  ],
                ),
                loadMore: () async {
                  print("loadmore");
                  getHotData();
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

  void getHotData() async {
    var formData = {"page": ++page};
    request("getHotData", FormData: formData).then((value) {
      Map data = new Map.from(json.decode(value.toString()));
      List<Map> nowDataList = (data['data'] as List).cast();
      //状态
      setState(() {
        hotDataList.addAll(nowDataList);
        page++;
      });
    });
  }

  Widget _warpWidght() {
    final widthSize = MediaQuery.of(context).size.width;
    if (hotDataList.length != 0) {
      List<Widget> listWidght = hotDataList.map((e) {
        return InkWell(
          onTap: () {},
          child: Container(
            width: widthSize / 2 - 3,
            color: Colors.white,
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.only(bottom: 3.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  e['image'],
                  width: widthSize / 2,
                  height: 200,
                ),
                Text(
                  e['details'],
                  maxLines: 1,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                    child:Row(
                      children: <Widget>[
                        Text(
                          "¥"+e['oriPrice'],
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                        Text(
                          " ¥"+e['presentPrice'],
                          style: TextStyle(color: Colors.black26, fontSize: 14,decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    )
                ),

              ],
            ),
          ),
        );
      }).toList();

      return Wrap(spacing: 2, children: listWidght);
    } else {
      return Container(
        child: Text(""),
      );
    }
  }

  Widget hotTitalWidght() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Text(
        "火爆专区",
        style: TextStyle(fontSize: 15, color: KColors.primaryColor),
      ),
    );
  }

  Widget getHotWidght() {
    return Container(
      child: Column(
        children: <Widget>[
          hotTitalWidght(),
          _warpWidght(),
        ],
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
