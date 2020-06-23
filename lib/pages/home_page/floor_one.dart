import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/**
 * 模拟
 */
class FloorOne extends StatelessWidget {
  final List mFoorlOne;

  const FloorOne({Key key, this.mFoorlOne}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /**
     * 下面注视的适配工具
     * 在不同的手机上面显示效果不同
     */
//    double width = ScreenUtil.getInstance().width;
//    print('width+${width}');
    final width = MediaQuery.of(context).size.width; //获取当前手机的屏幕宽度
    double norHeight = 200; //固定高度

    void goDetailPage(BuildContext context, String goodType) {}

    return Container(
      height: norHeight,
      width: width,
      margin: EdgeInsets.only(top: 5, left: 5, right: 5),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: norHeight,
            width: width / 2,
            child: InkWell(
              onTap: () {
                goDetailPage(context, mFoorlOne[0]['goods']);
              },
              child: Image.network(
                mFoorlOne[0]['image'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: SizedBox(
                    height: norHeight / 2,
                    width: width / 2,
                    child: InkWell(
                      onTap: () {
                        goDetailPage(context, mFoorlOne[1]['goods']);
                      },
                      child: Image.network(
                        mFoorlOne[1]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: norHeight / 2,
                    width: width / 2,
                    child: InkWell(
                      onTap: () {
                        goDetailPage(context, mFoorlOne[2]['goods']);
                      },
                      child: Image.network(
                        mFoorlOne[2]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
