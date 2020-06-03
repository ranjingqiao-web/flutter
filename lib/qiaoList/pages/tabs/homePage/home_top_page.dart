import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Commom/backgroundFontColor.dart';
import 'xinShou_c_page.dart';

class hometopView extends StatelessWidget {
  const hometopView({Key key}) : super(key: key);
//布局重点就是设置800的高度，
// 让它足够高，才能把中间框定位出来
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: ScreenUtil().setWidth(750),
          height: ScreenUtil().setHeight(700),
          // decoration: BoxDecoration(color: Colors.red),
          child: Stack(
            children: <Widget>[
              Container(
                width: ScreenUtil().setWidth(750),
                height: ScreenUtil().setHeight(450),
                padding: EdgeInsets.only(top: 50),
                // color: YColors.homePageTopBackGroundColor,

                child: new Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    topThreeCar(imgUrl: 'images/3.0x/ran1.png', imgText: '快收款'),
                    topThreeCar(imgUrl: 'images/3.0x/ran1.png', imgText: '好还款'),
                    topThreeCar(imgUrl: 'images/3.0x/ran1.png', imgText: '精养卡'),
                  ],
                )),
                decoration: new BoxDecoration(
                  color: YColors.homePageTopBackGroundColor,
                  borderRadius: new BorderRadius.only(
                      bottomLeft: new Radius.circular(30.0),
                      bottomRight: new Radius.circular(30.0)),
                ),
              ),
              topCenterView(),
              // Positioned(child: Text("data2")),
            ],
          ),
        ),
        topBanner(),
        xinShouPageView(),
      ],
    );
  }

  // 新手必读
  Widget newXinShou() {}
// 暂无消息提示
  Widget topBanner() {
    return InkWell(
      onTap: () {
        print("ject");
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
        decoration: new BoxDecoration(
          color: YColors.homePageTopFontColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 10.0),
                height: ScreenUtil().setHeight(80),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'images/xylaba.png',
                      width: ScreenUtil().setWidth(40),
                      height: ScreenUtil().setHeight(40),
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "暂无交易信息",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: ScreenUtil().setSp(18)),
                    ),
                  ],
                )),
            Container(
                padding: EdgeInsets.only(right: 10.0),
                child: Text(
                  '更多',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: ScreenUtil().setSp(20),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget topCenterView() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
          margin: const EdgeInsets.only(top: 160.0),
          // bottom: 1,
          child: Center(
            // padding: EdgeInsets.only(right: 20),
            // margin: const EdgeInsets.only(top:140.0),
            child: Row(
              children: <Widget>[
                Center(
                  child: Container(
                      width: ScreenUtil().setWidth(680),
                      height: ScreenUtil().setWidth(400),
                      //  margin: EdgeInsets.symmetric(horizontal:10.0,vertical: 10),

                      // margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Container(
                        child: GetGridView(),
                      )),
                )
              ],
            ),
          )
          ),
        ],
      )
    );
  }

  Widget GetGridView() {
    return GridView(

        //SliverGridDelegateWithFixedCrossAxisCount 构建一个横轴固定数量Widget
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //横轴元素个数
          crossAxisCount: 4,
          //纵轴间距
          // mainAxisSpacing: 10.0,
          //横轴间距
          // crossAxisSpacing: 10.0,
          //子组件宽高长度比例
          childAspectRatio: 1,
        ),
        children: <Widget>[
          listssss(),
          listssss(),
          listssss(),
          listssss(),
          listssss(),
          listssss(),
          listssss(),
          listssss(),
        ]);
  }

  Widget listssss() {
    return InkWell(
      onTap: () {
        print("object");
      },
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          topGetImages_GridView(),
          topGet_red_GridView(),
          topGetText_GridView()
        ],
      ),
    );
  }

  Widget topGetImages_GridView() {
    return Image.network(
        'https://main.qcloudimg.com/raw/4f6017a943f48260f330c43b4a3919e0.png',
        width: ScreenUtil().setWidth(50),
        height: ScreenUtil().setHeight(50),
        fit: BoxFit.cover);
  }

  Widget topGet_red_GridView() {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      margin: EdgeInsetsDirectional.fromSTEB(0, 3.0, 0, 3.0),
      decoration: BoxDecoration(
        color: YColors.homePageTopGridViewColorRed,
        // color: Colors.green,

        //  backgroundColor: YColors.homePageTopGridViewColorRed,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Text(
        '昨日收益0.00元',
        style: TextStyle(
          fontSize: ScreenUtil().setSp(12),
          color: YColors.homePageTopFontColor,
        ),
      ),
    );
  }

  Widget topGetText_GridView() {
    return Text(
      '全是钱啦',
      style: TextStyle(
          fontSize: ScreenUtil().setSp(24),
          color: YColors.homePageTopGridViewColor),
    );
  }

// 顶部收款按钮切换
  Widget topThreeCar({String imgUrl, String imgText}) {
    return Container(
        child: InkWell(
      onTap: () {
        print('${imgText}');
      },
      child: Column(
        children: <Widget>[
          Image.asset(
            imgUrl,
            width: ScreenUtil().setWidth(100),
            height: ScreenUtil().setHeight(60),
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: ScreenUtil().setHeight(30),
          ),
          Text(
            imgText,
            style: TextStyle(
                color: YColors.homePageTopFontColor,
                fontSize: ScreenUtil().setSp(30)),
          )
        ],
      ),
    ));
  }
}
