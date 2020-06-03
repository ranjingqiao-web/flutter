import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_demo/ranHero/ranHero.dart';
import 'package:flutter_demo/config/ZMW_Config/ConfigurationInterface/ConfigurationInterface.dart';
import 'package:flutter_demo/routes/fluro_application.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart'; //下拉加载更多
// import 'package:flutter_easyrefresh/material_header.dart';
// import 'package:flutter_easyrefresh/material_footer.dart';
import '../../Commom/backgroundFontColor.dart';

class shiZhiPage extends StatelessWidget {
  const shiZhiPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: YColors.homePageTopfffColor);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
        elevation: 0.6,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("设置",
            style: TextStyle(
                color: Colors.black87, fontSize: ScreenUtil().setSp(34))),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: YColors.homePageBColor,
        ),
        child: Container(
          margin: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
          child: Column(
            children: <Widget>[
              listData("清除缓存", '777k'),
              listData("版本介绍", '什么软件1.0.0'),
              listDataYou(context,"隐私政策",1),
              listDataYou(context,"注册协议",2),
              outLogin("退出登录"),
              outLogin("账户注销"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listData(String str1, String str2) {
  return InkWell(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
        color: YColors.homePageTopfffColor,
        border: Border(bottom: BorderSide(color: Colors.black38, width: 0.8)),
      ),
      child: Center(
          child: Container(
        decoration: BoxDecoration(
          color: YColors.homePageTopfffColor,
        ),
        width: ScreenUtil().setWidth(710),
        height: ScreenUtil().setHeight(100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              str1,
              style: TextStyle(
                  color: Colors.black87, fontSize: ScreenUtil().setSp(30)),
            ),
            Text(
              str2,
              style: TextStyle(
                  color: Colors.black87, fontSize: ScreenUtil().setSp(28)),
            ),
          ],
        ),
      )),
    ),
  );
}

Widget listDataYou(context,String str1,int id) {
  return InkWell(
    onTap: () {
      if(id==1){
          Application.router.navigateTo(context, '/yiSiZhuCePage');
      }else{
        Application.router.navigateTo(context, '/zhuCeXieYiPage');
      }
       
    },
    child: Container(
      decoration: BoxDecoration(
        color: YColors.homePageTopfffColor,
        border: Border(bottom: BorderSide(color: Colors.black38, width: 0.8)),
      ),
      child: Center(
          child: Container(
        decoration: BoxDecoration(
          color: YColors.homePageTopfffColor,
        ),
        width: ScreenUtil().setWidth(710),
        height: ScreenUtil().setHeight(100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              str1,
              style: TextStyle(
                  color: Colors.black87, fontSize: ScreenUtil().setSp(30)),
            ),
            Icon(Icons.keyboard_arrow_right)
          ],
        ),
      )),
    ),
  );
}

Widget outLogin(String str1) {
  return InkWell(
    onTap: () {
      print('${str1}');
    },
    child: Container(
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(40)),
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(100),
      decoration: BoxDecoration(
        color: YColors.homePageTopfffColor,
      ),
      child: Center(
        child: Text(
          str1,
          style: TextStyle(
              color: Colors.black87, fontSize: ScreenUtil().setSp(30)),
        ),
      ),
    ),
  );
}
