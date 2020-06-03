import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// 九宫格
Widget jiuGongGe(){
   var s='https://s1.hdslb.com/bfs/static/jinkela/long/images/pic962110.png';
  return GridView(
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 4,
  mainAxisSpacing: 2.0,
  crossAxisSpacing: 2.0,
  childAspectRatio: 1,//宽高比

),
children: <Widget>[
  Image.network('https://s1.hdslb.com/bfs/static/jinkela/long/images/pic962110.png',
  width: ScreenUtil().setWidth(40),
  height: ScreenUtil().setHeight(40),
  fit: BoxFit.cover,
  ),Image.network('https://s1.hdslb.com/bfs/static/jinkela/long/images/pic962110.png',
  width: ScreenUtil().setWidth(40),
  height: ScreenUtil().setHeight(40),
  fit: BoxFit.cover,
  ),Image.network(s,
  width: ScreenUtil().setWidth(40),
  height: ScreenUtil().setHeight(40),
  fit: BoxFit.cover,
  ),Image.network('https://s1.hdslb.com/bfs/static/jinkela/long/images/pic962110.png',
  width: ScreenUtil().setWidth(40),
  height: ScreenUtil().setHeight(40),
  fit: BoxFit.cover,
  ),Image.network('https://s1.hdslb.com/bfs/static/jinkela/long/images/pic962110.png',
  width: ScreenUtil().setWidth(40),
  height: ScreenUtil().setHeight(40),
  fit: BoxFit.cover,
  ),Image.network('https://s1.hdslb.com/bfs/static/jinkela/long/images/pic962110.png',
  width: ScreenUtil().setWidth(40),
  height: ScreenUtil().setHeight(40),
  fit: BoxFit.cover,
  )
   
],

  ) ;
}
// 保持数字是三位小数用逗号区分开
// 传的数字是字符串
 String formatNum(num, {point: num}) {
  if (num != null) {
    String str = double.parse(num.toString()).toString();
    // 分开截取
    List<String> sub = str.split('.');
    // 处理值
    List val = List.from(sub[0].split(''));
    // 处理点
    List<String> points = List.from(sub[1].split(''));
    //处理分割符
    for (int index = 0, i = val.length - 1; i >= 0; index++, i--) {
      // 除以三没有余数、不等于零并且不等于1 就加个逗号
      if (index % 3 == 0 && index != 0 && i != 1) val[i] = val[i] + ',';
    }
    // 处理小数点
    for (int i = 0; i <= point - points.length; i++) {
      points.add('0');
    }
    //如果大于长度就截取
    if (points.length > point) {
      // 截取数组
      points = points.sublist(0, point);
    }
    // 判断是否有长度
    if (points.length > 0) {
      return '${val.join('')}.${points.join('')}';
    } else {
      return val.join('');
    }
  } else {
    return "0.0";
  }
}