import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/**
 * banner
 */
class BannerPage extends StatelessWidget {
  final List mbannerData;

  const BannerPage({Key key, this.mbannerData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
      height: ScreenUtil().setHeight(300),
      width: ScreenUtil().setWidth(750),
      child: Swiper(
        itemCount: mbannerData.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: Image.network(
              mbannerData[index]['image'],
              fit: BoxFit.cover,
            ),
          );
        },
        pagination: SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}
