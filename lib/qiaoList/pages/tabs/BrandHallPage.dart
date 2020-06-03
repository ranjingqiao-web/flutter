import 'package:flutter/material.dart';
import 'package:flutter_demo/qiaoList/pages/Commom/backgroundFontColor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'BrandHallPage/brandGradeView_page.dart';
class BrandHallPage extends StatelessWidget {
  const BrandHallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Column(
        children: <Widget>[
          xinYongTuBiao(),
           
          //  gradeViewZiDingYi() 
        ],
      )
    );
  }
}

Widget xinYongTuBiao(){
  return Container(
    child: Stack(
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(750),
            height: ScreenUtil().setHeight(670),
            decoration: BoxDecoration(
              color: YColors.homePageBColor
                // color: YColors.homePageTopBackGroundColor
            ),
          
          ),
          Container(
                width: ScreenUtil().setWidth(750),
                height: ScreenUtil().setHeight(500),
            decoration: BoxDecoration(
              // color: YColors.homePageBColor
              color: YColors.homePageTopBackGroundColor
            ),
              child:Center(
                child:  Container(
                  // 信用模块容器
                  width: ScreenUtil().setWidth(450),
                  height: ScreenUtil().setHeight(300),
                  decoration: BoxDecoration(
              // color: Colors.green
            ),
                  child: Stack(
                        children: <Widget>[
                          Positioned(
                          left: ScreenUtil().setWidth(60),
                          top: ScreenUtil().setHeight(280),
                          child: con()),
                          Positioned(
                          left: ScreenUtil().setWidth(45),
                          top: ScreenUtil().setHeight(240),
                          child: con()),

                          Positioned(
                          left: ScreenUtil().setWidth(40),
                          top: ScreenUtil().setHeight(200),
                          child: con()),
                          Positioned(
                          left: ScreenUtil().setWidth(44),
                          top: ScreenUtil().setHeight(160),
                          child: con()),
                          Positioned(
                          left: ScreenUtil().setWidth(55),
                          top: ScreenUtil().setHeight(115),
                          child: con()),
                           Positioned(
                          left: ScreenUtil().setWidth(80),
                          top: ScreenUtil().setHeight(80),
                          child: conRed()),
                           Positioned(
                          left: ScreenUtil().setWidth(110),
                          top: ScreenUtil().setHeight(60),
                          child: conRed()),
                           Positioned(
                          left: ScreenUtil().setWidth(140),
                          top: ScreenUtil().setHeight(50),
                          child: conRed()),
                           Positioned(
                          left: ScreenUtil().setWidth(174),
                          top: ScreenUtil().setHeight(40),
                          child: conRed()),
                           Positioned(
                          left: ScreenUtil().setWidth(206),
                          top: ScreenUtil().setHeight(38),
                          child: conRed()),
                           Positioned(
                          left: ScreenUtil().setWidth(240),
                          top: ScreenUtil().setHeight(40),
                          child: conRed()),
                           Positioned(
                          left: ScreenUtil().setWidth(276),
                          top: ScreenUtil().setHeight(45),
                          child: conRed()),

                           Positioned(
                          left: ScreenUtil().setWidth(310),
                          top: ScreenUtil().setHeight(60),
                          child: conRed()),
                           Positioned(
                          left: ScreenUtil().setWidth(340),
                          top: ScreenUtil().setHeight(90),
                          child: conRed()),
                           Positioned(
                          left: ScreenUtil().setWidth(366),
                          top: ScreenUtil().setHeight(126),
                          child: conRed()),

                           Positioned(
                          left: ScreenUtil().setWidth(380),
                          top: ScreenUtil().setHeight(160),
                          child: conRed()),

                           Positioned(
                          left: ScreenUtil().setWidth(385),
                          top: ScreenUtil().setHeight(200),
                          child: conRed()),
                           Positioned(
                          left: ScreenUtil().setWidth(380),
                          top: ScreenUtil().setHeight(240),
                          child: conRed()),
                           Positioned(
                          left: ScreenUtil().setWidth(370),
                          top: ScreenUtil().setHeight(280),
                          child: conRed()),
                          
                         Positioned(
                           left:ScreenUtil().setWidth(180),
                           top: ScreenUtil().setHeight(150),
                           child: Text('300',
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: ScreenUtil().setSp(40)
                           ),
                           )),
                         Positioned(
                           left:ScreenUtil().setWidth(160),
                           top: ScreenUtil().setHeight(200),
                           child: Text('信用正常',
                            style: TextStyle(
                             color: Colors.white,
                             fontSize: ScreenUtil().setSp(30)
                           ),
                           )),


                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: ScreenUtil().setHeight(60),
              left: 0,
              child:  Container(
              width: ScreenUtil().setWidth(750),
              child: Center(
                child: Container(
                  
                 width: ScreenUtil().setWidth(700),
                height: ScreenUtil().setHeight(150),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white
                ),
                  child:souYueYes(),
                ),
              ),
            ))
            
        ],
      ),
  );
}

Widget souYueYes(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
    // crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
       listViews('images/c1.png','0','待守约'),
       listViews('images/c2.png','0','已守约'),
       listViews('images/c3.png','0','未守约'),
        
    ],
  );
}
Widget listViews(String im,String text,String text2){
  return  Container(
    // decoration: BoxDecoration(color:Colors.red),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center, 
    children: <Widget>[
      Container(
           padding: EdgeInsets.only(right:ScreenUtil().setWidth(10)),
           child:  Image.asset(im,
      width: 40,
      height: 40,
      fit: BoxFit.cover,
      ),
         ),
      
      Column(
      children: <Widget>[
        Text(text,
        
        style: TextStyle(
          
          fontSize: ScreenUtil().setSp(30),
          color: YColors.homePageTopGridViewColor
        ),),
          
        Text(text2,
        style: TextStyle(
          fontSize: ScreenUtil().setSp(26),
          color: YColors.homePageTopGridViewColor
        ),
        ),
      ],
      )
    ],
  ),
  );
}

Widget con(){
  return  Container(
    width: ScreenUtil().setWidth(22),
    height: ScreenUtil().setHeight(22),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
     border: new Border.all(width: 6.0, color: Colors.white),
    ),
  );
}
Widget conRed(){
  return  Container(
    width: ScreenUtil().setWidth(22),
    height: ScreenUtil().setHeight(22),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
     border: new Border.all(width: 6.0, color: Colors.red),
    ),
  );
}


 
  
Widget bottomGradeView(   ){

   return Container(
    width: ScreenUtil().setWidth(750),
    padding: EdgeInsets.only(bottom:50.0),
    decoration: BoxDecoration(
      color: YColors.homePageBColor
    ),
    child: Center(
      child: Container(
        width: ScreenUtil().setWidth(700),
        decoration: BoxDecoration(
       color: YColors.homePageTopfffColor
    ),
       child: Text('data'),
      ),
    ),
  );
}
Widget columRowView(){
  return Text('99999');
}
 