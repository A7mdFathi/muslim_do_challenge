import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizeExtension on num {
  ///[ScreenUtil.setWidth]
  double get w => ScreenUtil().setWidth(this);

  ///[ScreenUtil.setHeight]
  double get h => ScreenUtil().setHeight(this);

  ///[ScreenUtil.radius]
  double get r => ScreenUtil().radius(this);

  ///[ScreenUtil.setSp]
  double get sp => ScreenUtil().setSp(this);

  ///[ScreenUtil.setSp]
  @Deprecated('please use [sp]')
  double get ssp => ScreenUtil().setSp(this);

  ///[ScreenUtil.setSp]
  @Deprecated(
      'please use [sp] , and set textScaleFactor: 1.0 , for example: Text("text", textScaleFactor: 1.0)')
  double get nsp => ScreenUtil().setSp(this);

  ///屏幕宽度的倍数
  ///Multiple of screen width
  double get sw => ScreenUtil().screenWidth * this;

  ///屏幕高度的倍数
  ///Multiple of screen height
  double get sh => ScreenUtil().screenHeight * this;
}

extension SizeExtensionBox on num {
  Widget get widthBox => SizedBox(
        width: ScreenUtil().setWidth(this is int ? toDouble() : this),
      );

  Widget get heightBox => SizedBox(
        height: ScreenUtil().setHeight(this is int ? toDouble() : this),
      );
}
