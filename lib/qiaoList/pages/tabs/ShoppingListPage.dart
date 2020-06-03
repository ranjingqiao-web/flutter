import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_demo/ranHero/ranHero.dart';
import 'package:flutter_demo/config/ZMW_Config/ConfigurationInterface/ConfigurationInterface.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart'; //下拉加载更多
import '../Commom/backgroundFontColor.dart';

class ShoppingListPage extends StatelessWidget {
  const ShoppingListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new ListView(
        //这个东西后面贼有用
        children: <Widget>[
          Text('data'),
          // Expanded(
          //   child: getListView(),
          // ),
           
          //这是一个数组，因为列表就是可以装很多组件啊，注意是children:
        ],
      ),
    );
  }
}

Widget getListView() {
  return Container(
      child: Column(
    children: <Widget>[

       
      new ListTile(
          leading: new Icon(Icons.add_shopping_cart),
          title: new Text('add_shopping_cart'),
          trailing: Column(
            children: <Widget>[Text('一天后到期'), Text('到期还款日:11.28')],
          )),
      Row(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                '额度',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              Text(
                '2000',
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              print("object");
            },
            child: Container(
              width: ScreenUtil().setWidth(80),
              height: ScreenUtil().setHeight(40),
              decoration: BoxDecoration(
                color: YColors.homePageTopGridViewColorRed,
                borderRadius: BorderRadius.circular(14)
                ),
              child: Text('立即刷卡',
              style: TextStyle(
                fontSize:ScreenUtil().setSp(28),
                color: Colors.white,

              ),
              ),
            ),
          )
        ],
      )
    ],
  ));
}
