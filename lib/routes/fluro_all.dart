import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_demo/routes/fluro_handler.dart'; 
import '../qiaoList/pages/Tabs.dart';
// import '../qiaoList/pages/detail/details_page.dart'; //商品详情页

class Routes{
  static String root ='/';
  static String detailsPage='/DetailsPage';
  static String zcPage='/zcPage';
  static String smrzPage='/smrzPage'; 
  static String shezhiPage='/shezhiPage'; 
  static String yiSiZhuCePage='/yiSiZhuCePage';  
  static String zhuCeXieYiPage='/zhuCeXieYiPage';  
 
   
  static void configureRoutes(Router router){
    router.notFoundHandler=new Handler(
      handlerFunc: (BuildContext context,Map<String,List<String>> params){
        print("ERROR-------------------->");
        // 如果没有此页面，就跳转到PageBottomNavigationBar页面
        return PageBottomNavigationBar();
      }
    ); 
    router.define(detailsPage,handler:detailsHandler);
    router.define(zcPage,handler:zcPageHandler);
    router.define(smrzPage,handler:smrzPageHandler);
    router.define(shezhiPage,handler:shiZhiPageHandler);
    router.define(yiSiZhuCePage,handler:yiSiZhuCePageHandler);
    router.define(zhuCeXieYiPage,handler:zhuCeXieYiPageHandler);
      
     
  }    
}


