import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/config/strings.dart';
import 'package:shop/index_config.dart';
import 'package:shop/service/http_service.dart';
import 'dart:convert';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
              print("bannerData" + bannerData.toString());
              List<Map<String, dynamic>> catagoryData =
                  (data['data']['catagoryData'] as List).cast();
              print("catagoryData数据" + catagoryData.toString());
              List<Map<String, dynamic>> recoment =
                  (data['data']['recoment'] as List).cast();
              print("recoment数据" + recoment.toString());
              List<Map<String, dynamic>> floorPic =
                  (data['data']['floorPic'] as List).cast();
              print("floorPic数据" + floorPic.toString());
              List<Map<String, dynamic>> floor1 =
                  (data['data']['floor1'] as List).cast();
              print("floorPic数据" + floor1.toString());
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
                    SwiperWidgh(
                      mbannerData: bannerData,
                    ),
                    CategoryWidgh(
                      catagoryData: catagoryData,
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

/**
 * banner
 */
class SwiperWidgh extends StatelessWidget {
  final List mbannerData;

  const SwiperWidgh({Key key, this.mbannerData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      height: ScreenUtil().setHeight(300),
      width: ScreenUtil().setWidth(750),
      child: Swiper(
        itemCount: mbannerData.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              print(index);
            },
            child: Image.network(
              "${mbannerData[index]['image']}",
              fit: BoxFit.cover,
            ),
          );
        },
        pagination: SwiperPagination(), //分页展示
        autoplay: true,
      ),
    );
  }
}

/**
 * 分类
 */
class CategoryWidgh extends StatelessWidget {
  final List catagoryData;

  const CategoryWidgh({Key key, this.catagoryData}) : super(key: key);

  Widget _GridViewBuild(BuildContext context, int index) {
    return InkWell(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
            width: 40,
            child: Image.network(
              catagoryData[index]['image'],
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30,
            child: Text(
              catagoryData[index]['title'],
              style: TextStyle(color: KColors.primaryColor, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 10.0),
      height: ScreenUtil().setHeight(240),
      child: Expanded(
        flex: 1,
        child: GridView.builder(
            physics: NeverScrollableScrollPhysics(), //禁止滑动
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, mainAxisSpacing: 0.0, crossAxisSpacing: 0.0),
            itemCount: catagoryData.length,
            itemBuilder: _GridViewBuild),
      ),
//      child: GridView.builder(
//          physics: NeverScrollableScrollPhysics(), //禁止滑动
//          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//              crossAxisCount: 5, mainAxisSpacing: 5.0, crossAxisSpacing: 3.0),
//          itemCount: catagoryData.length,
//          itemBuilder: _GridViewBuild),
    );
  }
}
