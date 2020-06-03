import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Commom/backgroundFontColor.dart';

class xinShouPageView extends StatelessWidget {
  const xinShouPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
           
            width: ScreenUtil().setWidth(750),
            margin: EdgeInsets.only(bottom: 10.0),
            
            child: Column(
              children: <Widget>[
                columlTwo(
                    "新手必读",
                    'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1582099098&di=6394e36f403d04501965033c3cd09b4e&src=http://dpic.tiankong.com/cv/t1/QJ8134287143.jpg',
                    '2222',
                    '333'),
                columlTwo(
                    "推广文案",
                    'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1582099098&di=6394e36f403d04501965033c3cd09b4e&src=http://dpic.tiankong.com/cv/t1/QJ8134287143.jpg',
                    '2222',
                    '333'),
              ],
            )));
  }
}

// contentText 文字
Widget contentText(String contextx, String contexthui) {
  return Container(
      width: ScreenUtil().setWidth(340),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
            child: Text(
              contextx,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: YColors.homePageTopGridViewColor,
                  fontSize: ScreenUtil().setSp(26)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
            child: Text(
              contexthui,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: YColors.homePageTopXinShouHui,
                fontSize: ScreenUtil().setSp(20),
              ),
            ),
          )
        ],
      ));
}

// 内容区域
Widget imagesContent(String imagesUrl) {
  return Container(
    child: Image.network(
      imagesUrl,
      height: ScreenUtil().setHeight(200),
      fit: BoxFit.cover,
    ),
  );
}

// 新手必看文字
Widget xinShouText(String text) {
  return Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 5.0),
    child: Text(
      text,
      style: TextStyle(
        color: YColors.homePageTopGridViewColor,
        fontSize: ScreenUtil().setSp(28),
      ),
    ),
  );
}

Widget allTextImages(imagesUrl, contextx, contexthui) {
  return Container(
    width: ScreenUtil().setWidth(340),
    height: ScreenUtil().setHeight(320),
    child: Column(
      children: <Widget>[
        imagesContent(imagesUrl),
        contentText(contextx, contexthui),
      ],
    ),
  );
}

Widget columlTwo(tg, imagesUrl, contextx, contexthui) {
  return Container(
      //  color: YColors.homePageBColor, 
      //  color: Colors.red, 
      //  padding: EdgeInsets.only(left:20.0),
      child: Column(
        children: <Widget>[
          xinShouText(tg),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () {print("1");},
                child: Container(
                  
                  decoration: BoxDecoration(
                    color: YColors.homePageTopFontColor,
                    borderRadius: BorderRadius.circular(8.0),
                    
                  ),
                  margin: EdgeInsets.only(right: 5.0),
                  child: allTextImages(imagesUrl, contextx, contexthui),
                ),
              ),
              InkWell(
                onTap: () {print("2");},
                child: Container( 
                  decoration: BoxDecoration(
                    color: YColors.homePageTopFontColor,
                   
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  margin: EdgeInsets.only(left: 5.0),
                  child: allTextImages(imagesUrl, contextx, contexthui),
                ),
              )
            ],
          ),
        ],
      ));
}
