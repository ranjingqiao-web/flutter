import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../qiaoList/pages/detail/details_page.dart'; //商品详情页
import '../qiaoList/pages/pages/zc_page.dart'; //注册页面

import '../qiaoList/pages/pages/mine_child_pages/smrz.dart'; //实名注册页面
import '../qiaoList/pages/pages/mine_child_pages/shezhi.dart';//我的模块设置页面
import '../qiaoList/pages/pages/mine_child_pages/shezhi_child/yinSiZhengChe_page.dart';//隐私注册
import '../qiaoList/pages/pages/mine_child_pages/shezhi_child/zhuCeXieYi_page.dart';//隐私注册

 

Handler detailsHandler=Handler(
     handlerFunc: (BuildContext context,Map<String ,List<String>>params){
       String goodsId=params['id'].first;
       print('---------------${goodsId}--------');
       return DetailsPage(goodsId);
     }
);


Handler zcPageHandler=Handler(
     handlerFunc: (BuildContext context,Map<String ,List<String>>params){
       String goodsId=params['id'].first;
       print('---------------${goodsId}--------');
       return zcPage();
     }
);




Handler smrzPageHandler=Handler(
     handlerFunc: (BuildContext context,Map<String ,List<String>>params){
       String mineId=params['id'].first;
       print('---------------${mineId}--------');
       return smrzPage();
     }
);


Handler shiZhiPageHandler=Handler(
     handlerFunc: (BuildContext context,Map<String ,List<String>>params){
       String mineId=params['id'].first;
       print('---------------${mineId}--------');
       return shiZhiPage();
     }
);


Handler yiSiZhuCePageHandler=Handler(
     handlerFunc: (BuildContext context,Map<String ,List<String>>params){
      
       return yiSiZhuCePage();
     }
);
   
 Handler zhuCeXieYiPageHandler=Handler(
     handlerFunc: (BuildContext context,Map<String ,List<String>>params){
       
       return zhuCeXieYiPage();
     }
);
   
 




















