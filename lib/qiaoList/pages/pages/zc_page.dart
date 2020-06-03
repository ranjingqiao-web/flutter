import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './zc_page/zc_content.dart';

// 0000000000000000000000000000000000000000000000000000000000000
class zcPage extends StatelessWidget {
  const zcPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // https://www.bilibili.com/video/av77930670?p=7  过度页面编辑
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
    //     .copyWith(statusBarBrightness: Brightness.dark));
    //  brightness: Brightness.light状态栏字体颜色黑色
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.white);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white, //把appbar的背景色改成透明
        centerTitle: true,
        elevation: 0.5, //底部线的凹凸程度
        // backgroundColor: Colors.white,
        leading: new IconButton(
          // tooltip: 'Previous choice',
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '修改密码',
          style: TextStyle(color: Colors.black),
        ),
        // actions: <Widget>[
        //   new IconButton(
        //     icon: const Icon(Icons.arrow_forward),
        //     tooltip: 'Next choice',
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
  // 999999999999999999999999999999

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordControllerNew = TextEditingController();
  TextEditingController _vcodeController = TextEditingController();
  //分别定义两个输入框的焦点 用于切换焦点
  final FocusNode _nodeName = FocusNode();
  final FocusNode _nodePwd = FocusNode();
  final FocusNode _nodeVCode = FocusNode();
  final FocusNode _nodePwdNew = FocusNode();

  bool _isClick = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController.addListener(_verify);
    _passwordController.addListener(_verify);
    _passwordControllerNew.addListener(_verify);
    _vcodeController.addListener(_verify);
  }

  void _verify() {
    String name = _nameController.text;

    String password = _passwordController.text;
    String passwordNew = _passwordControllerNew.text;
    String nodeVCode = _vcodeController.text;
    print('name $name');
    print('password $password');
    print('_nodeVCode $nodeVCode');
    print('pass新密码 $passwordNew');
    if (name.isEmpty || name.length < 11) {
      setState(() {
        _isClick = false;
      });
      return;
    }

    if (password.isEmpty || password.length < 6) {
      setState(() {
        _isClick = false;
      });
      return;
    }
    if (passwordNew.isEmpty || passwordNew.length < 6) {
      setState(() {
        _isClick = false;
      });
      return;
    }
    setState(() {
      _isClick = true;
    });
  }

  _login() {
    print('login action');
  }

  @override
  void dispose() { 
    super.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _passwordControllerNew.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      resizeToAvoidBottomPadding: false, //输入框抵住键盘
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Text(
          //   '密码登录',
          //   style: TextStyle(
          //     color: Color(0xFF333333),
          //     fontSize: 26,
          //     fontWeight: FontWeight.bold,
          //   ),
          //   textAlign: TextAlign.left,
          // ),
          SizedBox(
            height: 16,
          ),
          MyTextField(
            focusNode: _nodeName,
            topPlaceHolder: '手机号',
            placeHolder: '请输入注册手机号',
            maxLength: 11,
            keyboardType: TextInputType.phone,
            controller: _nameController,
          ),
          SizedBox(
            height: 25,
          ),

          MyTextField(
            focusNode: _nodeVCode,
            topPlaceHolder: '验证码',
            placeHolder: '请输入验证码',
            maxLength: 6,
            controller: _vcodeController,
            keyboardType: TextInputType.phone,
            getVCode: () {
              print('获取验证码');
            },
          ),
          SizedBox(
            height: 25,
          ),
          MyTextField(
            focusNode: _nodePwd,
            topPlaceHolder: '新密码',
            placeHolder: '请输入6-16位密码',
            maxLength: 16,
            controller: _passwordController,
            isInputPwd: true,
          ),
          SizedBox(
            height: 25,
          ),
          MyTextField(
            focusNode: _nodePwdNew,
            // keyboardType: TextInputType.newInputPwd,
            topPlaceHolder: '确认密码',
            placeHolder: '请再次输入密码',
            maxLength: 16,
            controller: _passwordControllerNew,
            isInputPwd: true,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 40),
            height: ScreenUtil().setHeight(80),
            color: Color(0xFF4688FA),
            child: FlatButton(
              disabledColor: Color(0xFF96BBFA),
              disabledTextColor: Color(0xFFD4E2FA),
              textColor: Colors.white,
              color: Color(0xFF4688FA),
              //必填参数，按下按钮时触发的回调，接收一个方法，传null表示按钮禁用，会显示禁用相关样式
              onPressed: _isClick ? _login : null,
              child: Text(
                '提交',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          // Container(
          //   height: 16,
          //   alignment: Alignment.topRight,
          //   child: FlatButton(
          //     child: Text(
          //       '忘记密码',
          //       textAlign: TextAlign.right,
          //       style: TextStyle(
          //         fontSize: 12,
          //         color: Color(0xFF999999),
          //       ),
          //     ),
          //     onPressed: () {},
          //   ),
          // ),
          // SizedBox(
          //   height: 16,
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   child: FlatButton(
          //     child: Text(
          //       '还没账号？快去注册',
          //       style: TextStyle(
          //         fontSize: 14,
          //         color: Color(0xFF4688FA),
          //       ),
          //     ),
          //     onPressed: () {},
          //   ),
          // )
        ],
      ),
    );
  }
}
