import 'dart:developer';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_demo/ranHero/ranHero.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_demo/config/ZMW_Config/ConfigurationInterface/ConfigurationInterface.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';
import 'package:flutter_refresh/flutter_refresh.dart';
import 'package:url_launcher/url_launcher.dart'; //打电话组件
import 'package:provide/provide.dart';
import '../../../provide/counter.dart';
import '../../../provide/provide_detail.dart';

import 'homePage/home_top_page.dart';
import '../Commom/backgroundFontColor.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        statusBarColor: YColors.homePageTopBackGroundColor);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    return new Scaffold(
      // appBar: AppBar(
      //   backgroundColor: YColors.homePageTopBackGroundColor,
      //   brightness: Brightness.light,
      //   elevation: 0,
      // ),
      body:SingleChildScrollView(
        child:  Container(
           decoration: BoxDecoration(color:YColors.homePageBColor ),//首页顶部背景颜色
 
          child: hometopView(),
        ),
      ),
    );
  }
}

// 首页轮播
class SwiperDiy extends StatelessWidget {
  // final List swiperDateLis;
  var swiperDateList = [
    {
      'imgSrc':
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575453774817&di=3cba7c6ef4e0cbb64eb93d103fdce3c2&imgtype=0&src=http%3A%2F%2Fportal.inout.asia%2Fimages%2Fbanner.jpg'
    },
    {
      'imgSrc':
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575453774817&di=3cba7c6ef4e0cbb64eb93d103fdce3c2&imgtype=0&src=http%3A%2F%2Fportal.inout.asia%2Fimages%2Fbanner.jpg'
    },
    {
      'imgSrc':
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575453774817&di=3cba7c6ef4e0cbb64eb93d103fdce3c2&imgtype=0&src=http%3A%2F%2Fportal.inout.asia%2Fimages%2Fbanner.jpg'
    },
    {
      'imgSrc':
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575453774817&di=3cba7c6ef4e0cbb64eb93d103fdce3c2&imgtype=0&src=http%3A%2F%2Fportal.inout.asia%2Fimages%2Fbanner.jpg'
    },
    {
      'imgSrc':
          'https://timgsa.baidu.com/timg?image&quality=80&sswiperDateListize=b9999_10000&sec=1575453774817&di=3cba7c6ef4e0cbb64eb93d103fdce3c2&imgtype=0&src=http%3A%2F%2Fportal.inout.asia%2Fimages%2Fbanner.jpg'
    },
    {
      'imgSrc':
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575453774817&di=3cba7c6ef4e0cbb64eb93d103fdce3c2&imgtype=0&src=http%3A%2F%2Fportal.inout.asia%2Fimages%2Fbanner.jpg'
    },
    {
      'imgSrc':
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575453774817&di=3cba7c6ef4e0cbb64eb93d103fdce3c2&imgtype=0&src=http%3A%2F%2Fportal.inout.asia%2Fimages%2Fbanner.jpg'
    },
  ];

  // List<Map> swiper = (swiperDateList as List).cast();

  SwiperDiy({this.swiperDateList});
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.instance = ScreenUtil.getInstance()..init(context);

    final size = MediaQuery.of(context).size;
    final W = size.width;
    final H = size.height;
    return Container(
      // padding: EdgeInsets.all(ScreenUtil.getInstance().setWidth(10)),
      height: ScreenUtil.getInstance().setHeight(400),
      width: ScreenUtil.getInstance().setWidth(750),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            '${swiperDateList[index]['imgSrc']}',
            fit: BoxFit.cover,
          );
        },
        itemCount: swiperDateList.length,
        pagination: SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}

// TextField(
//               controller: typeController,
//               decoration: InputDecoration(
//                   //修饰文本框
//                   contentPadding: EdgeInsets.all(10.0),
//                   labelText: "美女类型",
//                   helperText: "请输入你喜欢的类型"),
//               autofocus: false, //加上这句话是为了不让它默认开启手机键盘
//             ),
//             RaisedButton(
//               onPressed: _choiceAction,
//               child: Text("选择完毕"),
//             ),
//             Text(
//               showText,
//               overflow: TextOverflow.ellipsis,
//               maxLines: 1,
//             ),
