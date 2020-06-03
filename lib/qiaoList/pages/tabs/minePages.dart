import 'package:flutter/material.dart';
import 'package:flutter_demo/routes/fluro_application.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '.././../pages/Commom/backgroundFontColor.dart';
import 'package:flutter_demo/config/ZMW_Config/ConfigurationInterface/ConfigurationInterface.dart';
import 'package:provide/provide.dart';
import '../../../provide/counter.dart';

class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: YColors.homePageBColor),
      child: Column(
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(750),
            height: ScreenUtil().setHeight(250),
            decoration:
                BoxDecoration(color: YColors.homePageTopBackGroundColor),
            child: dingBuTouXiang(),
          ),
          Expanded(
            child: getListmy(context,),
          )
        ],
      ),
    );
  }
}

Widget dingBuTouXiang() {
  return Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: ScreenUtil().setWidth(200),
          height: ScreenUtil().setHeight(250),
          // color: Colors.red,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: ScreenUtil().setWidth(20),
                top: ScreenUtil().setHeight(70),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "http://img8.zol.com.cn/bbs/upload/23765/23764201.jpg"),
                  backgroundColor: Color(0xffff0000),
                  radius: 35.0,
                ),
              ),
              Positioned(
                left: ScreenUtil().setWidth(100),
                top: ScreenUtil().setHeight(120),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "http://img8.zol.com.cn/bbs/upload/23765/23764201.jpg"),
                  backgroundColor: Color(0xffff0000),
                  radius: 20.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "用户",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(30),
                    color: YColors.homePageTopfffColor),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Text(
                "data",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(34),
                    color: YColors.homePageTopfffColor),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget getListmy(context) {
  var images = [
    'images/tjr.png',
    'images/zjbzx.png',
    'images/wdxx.png',
    'images/wdfl.png',
    'images/wdcxk.png',
    'images/smrz.png',
    'images/zjrz.png',
    'images/aqzx.png',
    'images/kys.png',
    'images/sz.png',
  ];

  //  'http://picture3.51zhaomen.com/upload_pic_C-210列表图.jpg?imageView2/0/format/png/q/75|watermark/1/image/aHR0cDovL3BpY3R1cmUzLjUxemhhb21lbi5jb20vd2F0ZXIyLnBuZw==/dissolve/100/gravity/Center/dx/0/dy/0|imageslim';

  return new ListView(
    children: <Widget>[
      mineListAllWu(context,images[0], "推荐人", '1'),
      mineListAllWu(context,images[1], "资金保障险", '2'),
      mineListAllWu(context,images[2], "我的消息", '3'),
      mineListAllYou(context,images[3], "我的费率", '4'),
      mineListAllYou(context,images[4], "我的储蓄卡", '5'),
      mineListAllWu(context,images[5], "实名认证", '6'),
      mineListAllWu(context,images[6], "证件认证", '7'),
      mineListAllYou(context,images[7], "安全中心", '8'),
      mineListAllWu(context,images[8], "卡医生", '9'),
      mineListAllYou(context,images[9], "设置", '10'),
    ],
  );
}

Widget mineListAllWu(context,String imgs, String title, String id) {
  return Container(
      // padding: const EdgeInsets.all(8.0),

      padding: EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 18.0),
      decoration: BoxDecoration(color: YColors.homePageTopFontColor),
      child: InkWell(
        onTap: () {
          
          if(id=='6'){
            print("object2");
             print("id=${id}");
            Application.router.navigateTo(context, '/smrzPage?id=${id}');
            return;
          };  
           
        },
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                   child: Image.asset(
                    imgs,
                    width: ScreenUtil().setWidth(48),
                    height: ScreenUtil().setHeight(48),
                    fit: BoxFit.cover,
                  ),
                ),

                
                new Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  
                  child: new Text(
                    title,
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(24),
                        color: YColors.homePageTopGridViewColor),
                  ),
                ),
              ],
            ),
            new Icon(Icons.arrow_right, color: YColors.homePageTopGridViewColor)
          ],
        ),
      ));
}

Widget mineListAllYou(context,String imgs, String title, String id) {
  return Container(
      padding: EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 18.0),
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(color: YColors.homePageTopFontColor),
      child: InkWell(
        onTap: () {
          
           if(id=='10'){
             print("object3"); print("id=${id}");
            Application.router.navigateTo(context, '/shezhiPage?id=${id}');
            return;
 
          };
        },
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                   child: Image.asset(
                    imgs,
                    width: ScreenUtil().setWidth(48),
                    height: ScreenUtil().setHeight(48),
                    fit: BoxFit.cover,
                  ),
                ), 
                new Container(
                  padding: const EdgeInsets.only(left: 8.0),
                   
                  child: new Text(
                    title,
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(24),
                        color: YColors.homePageTopGridViewColor),
                  ),
                ),
              ],
            ),
            new Icon(Icons.arrow_right, color: YColors.homePageTopGridViewColor)
          ],
        ),
      ));
}
