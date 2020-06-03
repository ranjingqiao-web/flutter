import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/qiaoList/pages/Commom/backgroundFontColor.dart';
// import 'package:city_pickers/city_pickers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';

// import './smrz_city/smrz_city_page.dart';
//input https://segmentfault.com/a/1190000017928399
class smrzPage extends StatefulWidget {
  smrzPage({Key key}) : super(key: key);

  @override
  _smrzPageState createState() => _smrzPageState();
}

class _smrzPageState extends State<smrzPage> {
  //初始化賦值
  var _username = new TextEditingController();
  // 身份证
  var _idCar = new TextEditingController();

  // 储蓄卡号
  var _cxKa = new TextEditingController();
  // 开户行省
  var _kaiHuHangSheng = new TextEditingController();
  // 开户行市
  var _kaiHuHangShi = new TextEditingController();

  // 所属银行
  var _suoShuYinHan = new TextEditingController();
  
  // 开户行支行
  var _kaiHuZhiHan = new TextEditingController();
  
  // 预留手机号
  var _yuLiuShouJiHao = new TextEditingController();
   
  var _userName;
  var _iDCar;
  var _cXKa;
  var _kHHS;
  var _kHHSI;
  var _SSYH;
  var _KHHZH;
  var _YLSJH;

  void initState() {
    // TODO: implement initState
    super.initState();
    // this._username.text = '请输入您的姓名';
    // this._idCar.text = '请输入你的身份证号';
  }

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.white);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    return Scaffold(
      backgroundColor: YColors.homePageBColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.6,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text(
          '实名认证',
          style: TextStyle(color: YColors.homePageTopGridViewColor),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black26, width: 1.0)),
                color: Colors.white,
              ),
              child: Container(
                  child: Column(
                children: <Widget>[
                  Container(
                    height: ScreenUtil().setHeight(90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        renZhengtile('姓名'),
                        ConstrainedBox(
                            constraints:
                                BoxConstraints(maxHeight: 80, maxWidth: 300),
                            child: TextField(
                              // 聚焦点颜色
                              cursorColor: Colors.black87,
                              cursorWidth: 1,
                              textAlign: TextAlign.left,
                              // 最大行数
                              maxLines: 1,
                              // 是否自动更正
                              // autocorrect: true,
                              controller: _username,
                              // 值改变事件
                              onChanged: (val) {
                                this._userName = val;
                              },
                              // decoration: InputDecoration.collapsed(hintText: 'hello'),
                              decoration: InputDecoration(
                                  // 隐藏input的边框
                                  focusedBorder: InputBorder.none,
                                  // 初始化的输入框比较高,这个解决高度
                                  contentPadding: EdgeInsets.all(10.0),
                                  //默认提示
                                  hintText: '请输入您的姓名',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 1),
                                  )),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        renZhengtile('身份证'),
                        ConstrainedBox(
                            constraints:
                                BoxConstraints(maxHeight: 80, maxWidth: 300),
                            child: TextField(
                              // 聚焦点颜色
                              cursorColor: Colors.black87,
                              cursorWidth: 1,
                              textAlign: TextAlign.left,
                              // 最大行数
                              maxLines: 1,
                              // 是否自动更正
                              // autocorrect: true,
                              controller: _idCar,
                              // 值改变事件
                              onChanged: (val) {
                                this._iDCar = val;
                              },
                              // decoration: InputDecoration.collapsed(hintText: 'hello'),
                              decoration: InputDecoration(
                                  // 隐藏input的边框
                                  focusedBorder: InputBorder.none,
                                  // 初始化的输入框比较高,这个解决高度
                                  contentPadding: EdgeInsets.all(10.0),
                                  //默认提示
                                  hintText: '请输入您的身份证号',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 1),
                                  )),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        renZhengtile('储蓄卡号'),
                        ConstrainedBox(
                            constraints:
                                BoxConstraints(maxHeight: 80, maxWidth: 300),
                            child: TextField(
                              // 聚焦点颜色
                              cursorColor: Colors.black87,
                              cursorWidth: 1,
                              textAlign: TextAlign.left,
                              // 最大行数
                              maxLines: 1,
                              // 是否自动更正
                              // autocorrect: true,
                              controller: _cxKa,
                              // 值改变事件
                              onChanged: (val) {
                                this._cXKa = val;
                              },
                              // decoration: InputDecoration.collapsed(hintText: 'hello'),
                              decoration: InputDecoration(
                                  // 隐藏input的边框
                                  focusedBorder: InputBorder.none,
                                  // 初始化的输入框比较高,这个解决高度
                                  contentPadding: EdgeInsets.all(10.0),
                                  //默认提示
                                  hintText: '请输入储蓄卡号',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 1),
                                  )),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        renZhengtile('开户行省'),
                        ConstrainedBox(
                            constraints:
                                BoxConstraints(maxHeight: 80, maxWidth: 300),
                            child: TextField(
                              // 聚焦点颜色
                              cursorColor: Colors.black87,
                              cursorWidth: 1,
                              textAlign: TextAlign.left,
                              // 最大行数
                              maxLines: 1,
                              // 是否自动更正
                              // autocorrect: true,
                              controller: _kaiHuHangSheng,
                              // 值改变事件
                              onChanged: (val) {
                                this._kHHS = val;
                              },
                              // decoration: InputDecoration.collapsed(hintText: 'hello'),
                              decoration: InputDecoration(
                                  // 隐藏input的边框
                                  focusedBorder: InputBorder.none,
                                  // 初始化的输入框比较高,这个解决高度
                                  contentPadding: EdgeInsets.all(10.0),
                                  //默认提示
                                  hintText: '请输入开户行省',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 1),
                                  )),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        renZhengtile('开户行市'),
                        ConstrainedBox(
                            constraints:
                                BoxConstraints(maxHeight: 80, maxWidth: 300),
                            child: TextField(
                              // 聚焦点颜色
                              cursorColor: Colors.black87,
                              cursorWidth: 1,
                              textAlign: TextAlign.left,
                              // 最大行数
                              maxLines: 1,
                              // 是否自动更正
                              // autocorrect: true,
                              controller: _kaiHuHangShi,
                              // 值改变事件
                              onChanged: (val) {
                                this._kHHSI = val;
                              },
                              // decoration: InputDecoration.collapsed(hintText: 'hello'),
                              decoration: InputDecoration(
                                  // 隐藏input的边框
                                  focusedBorder: InputBorder.none,
                                  // 初始化的输入框比较高,这个解决高度
                                  contentPadding: EdgeInsets.all(10.0),
                                  //默认提示
                                  hintText: '请输入开户行市',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 1),
                                  )),
                            )),
                      ],
                    ),
                  ),
                    Container(
                    height: ScreenUtil().setHeight(90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        renZhengtile('所属银行'),
                        ConstrainedBox(
                            constraints:
                                BoxConstraints(maxHeight: 80, maxWidth: 300),
                            child: TextField(
                              // 聚焦点颜色
                              cursorColor: Colors.black87,
                              cursorWidth: 1,
                              textAlign: TextAlign.left,
                              // 最大行数
                              maxLines: 1,
                              // 是否自动更正
                              // autocorrect: true,
                              controller: _suoShuYinHan,
                              // 值改变事件
                              onChanged: (val) {
                                this._SSYH = val;
                              },
                              // decoration: InputDecoration.collapsed(hintText: 'hello'),
                              decoration: InputDecoration(
                                  // 隐藏input的边框
                                  focusedBorder: InputBorder.none,
                                  // 初始化的输入框比较高,这个解决高度
                                  contentPadding: EdgeInsets.all(10.0),
                                  //默认提示
                                  hintText: '请输入所属银行',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 1),
                                  )),
                            )),
                      ],
                    ),
                  ),
                    Container(
                    height: ScreenUtil().setHeight(90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        renZhengtile('开户行支行'),
                        ConstrainedBox(
                            constraints:
                                BoxConstraints(maxHeight: 80, maxWidth: 300),
                            child: TextField(
                              // 聚焦点颜色
                              cursorColor: Colors.black87,
                              cursorWidth: 1,
                              textAlign: TextAlign.left,
                              // 最大行数
                              maxLines: 1,
                              // 是否自动更正
                              // autocorrect: true,
                              controller: _kaiHuZhiHan,
                              // 值改变事件
                              onChanged: (val) {
                                this._KHHZH = val;
                              },
                              // decoration: InputDecoration.collapsed(hintText: 'hello'),
                              decoration: InputDecoration(
                                  // 隐藏input的边框
                                  focusedBorder: InputBorder.none,
                                  // 初始化的输入框比较高,这个解决高度
                                  contentPadding: EdgeInsets.all(10.0),
                                  //默认提示
                                  hintText: '请选择开户支行',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 1),
                                  )),
                            )),
                      ],
                    ),
                  ),
                    Container(
                    height: ScreenUtil().setHeight(90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        renZhengtile('预留手机号'),
                        ConstrainedBox(
                            constraints:
                                BoxConstraints(maxHeight: 80, maxWidth: 300),
                            child: TextField(
                              // 聚焦点颜色
                              cursorColor: Colors.black87,
                              cursorWidth: 1,
                              textAlign: TextAlign.left,
                              // 最大行数
                              maxLines: 1,
                              // 是否自动更正
                              // autocorrect: true,
                              controller: _yuLiuShouJiHao,
                              // 值改变事件
                              onChanged: (val) {
                                this._YLSJH = val;
                              },
                              // decoration: InputDecoration.collapsed(hintText: 'hello'),
                              decoration: InputDecoration(
                                  // 隐藏input的边框
                                  focusedBorder: InputBorder.none,
                                  // 初始化的输入框比较高,这个解决高度
                                  contentPadding: EdgeInsets.all(10.0),
                                  //默认提示
                                  hintText: '请输入银行卡预留手机号',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 1),
                                  )),
                            )),
                      ],
                    ),
                  ),
                  // _kaiHuZhiHan _yuLiuShouJiHao
                ],
              )),
            ),
            
             Container(
               height: ScreenUtil().setHeight(200),
               child: Center(
                 child: Text('请核对后填写正确资料，确保资金安全',
                 style: TextStyle(
                   color: YColors.homePageTopBackGroundColor,
                   fontSize: ScreenUtil().setSp(26)
                 ),
                 ),
               )
             ),

          




            Container(
              width: ScreenUtil().setWidth(750),
              child:
              Center(
                child: InkWell(
              onTap: (){
                 //輸出控制台
                  print(this._userName);
                  print(this._iDCar);
                  print(this._cXKa);
                  print(this._kHHS);
                  print(this._kHHSI);
                  print(this._SSYH);
                  print(this._KHHZH);
                  print(this._YLSJH);
              },
              
                child:  Container( 
             width: ScreenUtil().setWidth(680),
             height: ScreenUtil().setHeight(80),
             decoration: BoxDecoration(
               color: YColors.homePageTopBackGroundColor,
               borderRadius: BorderRadius.circular(10)
             ),
              child: Center(
                child: Text('完成',style: TextStyle(
                  fontSize: ScreenUtil().setSp(30),
                  color:Colors.white),)
              )  
            ),
              
            ),
              ),
              
              
              
                
            ),
             
             
            // _kaiHuHangSheng
          ],
        ),
      ),
    );
  }
}

Widget renZhengtile(String title) {
  return Container(
    width: ScreenUtil().setWidth(200),
    child: Text(title,
        style: TextStyle(
          color: Colors.black,
          fontSize: ScreenUtil().setSp(30),
        )),
  );
}
