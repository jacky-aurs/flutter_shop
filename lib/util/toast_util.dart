import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:shop/index_config.dart';

class ToastUtil {
  String mToastString;
  BuildContext mContext;

  ToastUtil( String toastString) {
    this.mToastString = toastString;
    showToast();
  }

  showToast() async {
    Fluttertoast.showToast(
        msg: mToastString,
        timeInSecForIos: 1,
        gravity: ToastGravity.CENTER,
        backgroundColor: KColors.primaryColor,
        fontSize: 15.0,
        textColor: KColors.whiteColor
    );
  }
}
