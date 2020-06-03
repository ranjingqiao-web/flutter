import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/qiaoList/pages/Commom/backgroundFontColor.dart';
import 'package:flutter_demo/ranHero/ranHero.dart';
import 'package:flutter_demo/config/ZMW_Config/ConfigurationInterface/ConfigurationInterface.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import '../../../provide/childProvide.dart';
import '../../../provide/provide_right_list.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart'; //下拉加载更多
import 'package:fluttertoast/fluttertoast.dart';
import '../../../routes/fluro_application.dart'; //引入路由文件
import '../Commom/common.dart' show formatNum, jiuGongGe;
import './ClassifiAationPage/zd_page.dart';
class ClassifiAationPage extends StatelessWidget {
  const ClassifiAationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        statusBarColor: YColors.homePageTopBackGroundColor);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    return SingleChildScrollView(
      child:  Column(
      children: <Widget>[
        topJinEr(),
         twoConter(),
         zuHe(), 
        expansionPanelDemo()
      ],
    ),
    );
    
     
  }
}
// class ClassifiAationPage extends StatefulWidget {
//   ClassifiAationPage({Key key}) : super(key: key);

//   @override
//   _ClassifiAationPageState createState() => _ClassifiAationPageState();
// }

// class _ClassifiAationPageState extends State<ClassifiAationPage> {
//   var root = [
//     {'aaaa': 111111111},
//     {'bbbbbbb': 2222222}
//   ];
//   @override
//   Widget build(BuildContext context) {
//     SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
//         statusBarColor: YColors.homePageTopBackGroundColor);
//     SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
//     // 0000000000000000000000000000000 SingleChildScrollView
//        return Scaffold(
//         body: Container( 
//             child: Column( 
//       children: <Widget>[topJinEr(), twoConter(), zuHe(), ExpansionPanelDemo()],
//     )));
//     // 000000000000000000000000000000000
//     // return Scaffold(
//     //     body: Container(
//     //         child: Column(
//     //   children: <Widget>[topJinEr(), twoConter(), zuHe(), ExpansionPanelDemo()],
//     // )));
//   }
// }

// 攻略推荐+额度攻略+借款攻略组合
Widget zuHe() {
  return Column(
    children: <Widget>[gonglTuiJian('攻略推荐'), eduJieKuan()],
  );
}

// 攻略推荐文字下面的额度攻略和借款攻略
Widget eduJieKuan() {
  return Container(
    width: ScreenUtil().setWidth(750),
    padding: EdgeInsets.only(bottom: 20.0),
    decoration: BoxDecoration(color: YColors.homePageBColor),
    child: Center(
      child: Container(
        width: ScreenUtil().setWidth(700),
        decoration: BoxDecoration(color: YColors.homePageBColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Container(
                width: ScreenUtil().setWidth(330),
                decoration: BoxDecoration(color: YColors.homePageTopFontColor),
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "额度攻略",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(30),
                          color: YColors.homePageTopGridViewColor),
                    ),
                    new CircleAvatar(
                      radius: 36.0,
                      backgroundImage: AssetImage(
                        'http://picture3.51zhaomen.com/banar4.jpg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('object');
              },
              child: Container(
                width: ScreenUtil().setWidth(330),
                decoration: BoxDecoration(color: YColors.homePageTopFontColor),
                padding: EdgeInsets.all(10),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: <Widget>[
                    Text(
                      "借款攻略",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(30),
                          color: YColors.homePageTopGridViewColor),
                    ),
                    new CircleAvatar(
                      radius: 36.0,
                      backgroundImage: AssetImage(
                        'http://picture3.51zhaomen.com/banar4.jpg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// 第三模块，攻略推荐组件
Widget gonglTuiJian(String data) {
  return Container(
    padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
    width: ScreenUtil().setWidth(750),
    decoration: BoxDecoration(
      color: YColors.homePageBColor,
    ),
    child: Text(
      data,
      style: TextStyle(
          color: YColors.homePageTopGridViewColor,
          fontSize: ScreenUtil().setSp(34)),
    ),
  );
}

// 第二模块，九宫格模块
Widget twoConter() {
  return new Container(
    child: Container(
      height: ScreenUtil().setHeight(460),
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      decoration: BoxDecoration(color: YColors.homePageBColor),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: YColors.homePageTopFontColor,
              borderRadius: BorderRadius.circular(8.0)),
          padding: EdgeInsets.all(5.0),
          width: ScreenUtil().setWidth(700),
          child: getGridView(),
        ),
      ),
    ),
  );
}

GridView getGridView() {
  return GridView.count(
    shrinkWrap: true, // 添加
    physics: NeverScrollableScrollPhysics(),
    crossAxisCount: 4, //每行的个数
    //padding: EdgeInsets.all(20.0),
    crossAxisSpacing: 10.0, //交叉轴间距
    mainAxisSpacing: 10.0, //主轴间距
    childAspectRatio: 1.0, //纵横轴的比例（宽：高 = childAspectRatio）
    children: <Widget>[
      zhanDang(),
      zhanDang(),
      zhanDang(),
      zhanDang(),
      zhanDang(),
      zhanDang(),
      zhanDang(),
    ],
  );
}

// 账单组件
Widget zhanDang() {
  return InkWell(
    onTap: () {
      print("object");
    },
    child: Column(
      children: <Widget>[
        Center(
            child: Container(
          width: 50,
          height: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: FadeInImage.assetNetwork(
              placeholder: "http://picture3.51zhaomen.com/banar4.jpg",
              image: 'http://picture3.51zhaomen.com/banar4.jpg',
              fit: BoxFit.cover,
            ),
          ),
        )),
        SizedBox(
          height: ScreenUtil().setHeight(30),
        ),
        Text(
          "贷偿账单",
          style: TextStyle(
              color: YColors.homePageTopGridViewColor,
              fontSize: ScreenUtil().setSp(30)),
        )
      ],
    ),
  );
}

//贷偿头部
Widget topJinEr() {
  return Container(
    width: ScreenUtil().setWidth(750),
    height: ScreenUtil().setHeight(400),
    padding: EdgeInsets.only(top: ScreenUtil().setHeight(50)),
    decoration: BoxDecoration(
      color: YColors.homePageTopBackGroundColor,
    ),
    child: Center(
      child: Column(
        children: <Widget>[
          Text(
            '贷偿.最高可借额度',
            style: TextStyle(
                color: Colors.white, fontSize: ScreenUtil().setSp(30)),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(50),
          ),
          Text(
            formatNum('100000', point: 4),
            style: TextStyle(
                color: Colors.white, fontSize: ScreenUtil().setSp(50)),
          ),
          SizedBox(height: ScreenUtil().setHeight(60)),
          jiHuoEDu('激活额度'),
        ],
      ),
    ),
  );
}

// 激活额度按钮
Widget jiHuoEDu(String btn) {
  return InkWell(
    onTap: () {
      print("object");
    },
    child: Container(
      width: ScreenUtil().setWidth(450),
      height: ScreenUtil().setHeight(80),
      decoration: BoxDecoration(
        color: YColors.homePageTopFontColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: Text(
          btn,
          style: TextStyle(fontSize: ScreenUtil().setSp(38)),
        ),
      ),
    ),
  );
}
