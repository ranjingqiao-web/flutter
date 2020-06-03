import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_demo/ranHero/ranHero.dart';
import 'package:flutter_demo/config/ZMW_Config/ConfigurationInterface/ConfigurationInterface.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart'; //下拉加载更多
// import 'package:flutter_easyrefresh/material_header.dart';
// import 'package:flutter_easyrefresh/material_footer.dart';
import '../../../Commom/backgroundFontColor.dart';
import 'package:url_launcher/url_launcher.dart'; //打电话组件

class zhuCeXieYiPage extends StatelessWidget {
  const zhuCeXieYiPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: YColors.homePageTopfffColor);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black),
          ),
          elevation: 0.6,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("注册协议",
              style: TextStyle(
                  color: Colors.black87, fontSize: ScreenUtil().setSp(34))),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Container(
            width: ScreenUtil().setWidth(710),
            decoration: BoxDecoration(
              color: YColors.homePageTopfffColor,
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  yinSititle("注册协议"),
                  yStitle2('九鼎信用(以下简称"本软件")遵循平等自愿、诚实守信、勤勉尽责的原则,努力为客户提供专业化、高质量的产品服务.在签订本合同之前,特提请客户充分了解本软件提供的相关产品服务内容及收费标准自主决定是否选择相关产品服务.'),
                  yStitle3('为明确双方的权利和义务,规范双方业务行为,甲方(客户)、乙方(本软件)本着平等互利的原则,就"本软件"系统服务相关事宜达成本协议.'),
                  yStitle3('本注册协议生效时间:2020年1月1日.'),
                  yStitle1('第一条定义'),
                  yStitle3('下列用语在本协议中的含义为:'),
                  yStitle3('"系统平台"是指乙方通过面向社会公众开放的通讯通道或开放型公众网络,以及为特定自助服务设施或客户建立的专用网络等方式，为甲方提供的第三方系统服务.'),
                  yStitle3('"密码"指客户自行设定并用于验证客户身份的字符和图形等信息.'),
                  yStitle3('"安全手机"指客户自行设定并用于验证客户身份及常用设备等信息.'),
                  yStitle3('"安全手机"指客户自行设定并用于验证客户身份及常用设备等信息.'),
                  yStitle3('"安全手机"指客户自行设定并用于验证客户身份及常用设备等信息.'),
                  yStitle3('"短信验证"是指按照特定规则动态产生并用于识别客户身份的字符组合，短行的发送包括第三方支付机构、电子银行、手机号等.'),
                  yStitle1('第二条甲方权利、义务'),
                  yStitle2('-、权利'),
                  yStitle3('(一)甲方自愿申请注册乙方"本软件"系统经乙方同意后，将有权根据注册项目的不同享受不同的服务.'),
                  yStitle3('(二)甲方在注册期内有权办理"本软件"系统变更或注销手续.'),
                  yStitle3('(三)甲方对乙方"本软件"系统服务如有疑问、建议或意见时，可关注乙方公众号或联系在线客服咨询.'),
                  yStitle2('二、义务'),
                  yStitle3('(一)甲方注册"本软件"业务,应遵守《个人支付结算业务相关规定》和乙方在网站上公布的交易规则.甲方开通其它功能的，还应遵守在乙方网站上公布的《服务协议相关规定》'),
                  yStitle3('(二)甲方确认的业务申请资料是本协议不可分割的组成部分.甲方应保证所提供资料真实、准确、完整，对于因甲方提供信息不真实、不准确或不完整所造成的损失由甲方承担.'),
                  yStitle3('(三)甲方办理"本软件"系统业务应直接通过乙方指定软件下载网站下载.2、根据适用的法律法规、法律程序的要求、强制性的行政或司法要求所必须的情况进行提供;'),
                  yStitle3('(四) 甲方必须妥善保管本人注册卡号(账号、登录ID或注册手机号码)及接收短信认证的手机.不得出租、出借、或交由他人代为使用，否则出现后果将由甲方自行承担.'),
                  yStitle3('(五)甲方应按照机密的原则设置和保管密码:避免使用姓名、生日、电话号码等与本人明显相关的信息作为密码;不得将本人自设密码提供给除法律规定外的任何人;通过电脑、手机等终端办理相关业务后,须将自设密码从终端上删除;采取其他合理措施,防止本人密码被窃取.由于密码泄露造成的后果由甲方承担.甲方应该妥善保管预留验证信息除在乙方办理业务时使用外不要向任何其他人、其他网站、电话或短信的问询提供预留验证信息内容.'),
                  yStitle3('(六)甲方使用乙方通过手机短信发送的动态验证进行交易确认的,应确保向乙方提供本人正确的手机号,乙方向该手机号发送可用于办理对外支付等业务的动态口令,甲方应在交易过程中认真核对短信发送编号等信息是否与正在进行的交易事项一致.因甲方提供手机号有误、未认真核对信息或未正确操作造成的一切损失,乙方不承担责任.'),
                  yStitle3('(七) 甲方在无乙方个人结算账户的情况下，申请开通乙方的支付系统业务，还应遵守如下条款.'),
                  yStitle3('1.甲方申请开通"本软件"业务,应由本人亲自办理须持有二代居民身份证进行实名注册，并向乙方平台明确公示的第三方机构提供相.关身份信息,承诺向第三方机构提供的所有资料真实、有效、完整、准确、合法，如甲方提供的资料不符合要求或存在代办、伪冒、欺诈等情形,乙方有权拒绝甲方的申请，甲方需承担相应法律责任;'),
                  yStitle3('2.甲方申请绑定银行卡时，应确保绑定银行卡状态正常,因状态不正常导致无法使用的,乙方对此不承担责任.'),
                  yStitle3('3.甲方注册"本软件"必须保证账户只限甲方本人使用，,不得出借、转让或出租.否则，由此产生的损失由甲方自行承担.'),
                  yStitle3('(八)发生以下情况时，甲方应及时与乙方客服联系办理相应手续,否则可能产生甲方无法正常使用乙方所提供的系统服务或甲方账户资金安全性降低等风险.甲方应承担办妥手续之前所产生的一切后果.根据我们的安全管理制度,个人信息泄露、毁损或丢失事件被列为最特大安全事件,-经发生将启动公司最高级别的紧急预案，由[数据与模型部、技术研发部、法律合规部]等多个部i ]组成联合应急响应小组处理.'),
                  yStitle3('1.甲方的密码泄露、遗忘,应办理密码重置手续.1、我们会制定网络安全事件应急预案，及时处置系统漏洞、计算机病毒、网络攻击、网络侵入等安全风险,在发生危害网络安全的事件时我们会立即启动应急预案,采取相应的补救措施,并按照规定向有关主管部门报告.'),
                  yStitle3('2.甲方密码或短信验证达到乙方设定的有效次数，或者在达到有效次数前遗失、损毁等仍需使用的，应办理重置手续.'),
                  yStitle3('3.甲方的设备遗失、损毁、无法正常使用,应及时办理设备更换验证或重置密码手续.'),
                  yStitle3('4.甲方输错密码、动态口令、短信认证信息超过乙方规定的次数,其交易可能被限制，甲方应及时联系客服解除限制的手续.'),
                  yStitle3('5.甲方证件到期,手机号遗失或变更,应即时取消或变更注册信息.'),
                  yStitle3('(九)甲方在使用"本软件"系统服务过程中,所提供的注册信息如有更改,应及时办理有关手续,办妥上述手续之前所产生的一切后果由甲方承担.'),
                  yStitle3('(十)甲方应保证注册支付业务账户的支付能力,并严格遵守支付结算业务的相关法律法规,不得从事虚假交易、违规违法等相关业务.'),
                  yStitle3('(十-)甲方不得以与除本系统提供的第三方外其它机构发生纠纷为理由拒绝支付应付乙方的款项.'),
                  yStitle3('(十二)甲方不得有意诋毁、损害乙方声誉或恶意攻击乙方"本软件"系统.'),
                  yStitle3('(十三)甲方办理注册"本软件"系统业务时，如其使用的服务功能涉及到乙方其他业务规定或规则的需同时遵守.'),
                  yStitle3('(十四)甲方长期不使用"本软件"系统,应主动申请办理注销手续.'),
                  yStitle3('(十五)甲方不具备完全民事行为能力的,甲方监护人应妥善保管甲方的注册卡号(账号、登录ID或注册手机号码)、接受短信认证信息的手机及相关密码,并对通过以上信息完成的交易负责.'),
                  yStitle3('(十六)甲方使用乙方"本软件"系统服务的,应按照乙方制定并公布的相应收费标准支付服务费用具体收费标准及优惠政策等,详见乙方公布的《服务价目表》.各项收费如有变动,以乙方最新公告为准.'),
                  yStitle1('第三条乙方权利、义务'),
                  yStitle2('一、权利'),
                  yStitle3('(一)乙方有权根据甲方真实情况,决定是否受理甲方的注册申请.'),
                  yStitle3('(二)乙方有权根据第三方支付机构标准规定业务收费标准并在网站及系统进行公布.'),
                  yStitle3('(三)乙方具有对"本软件"系统进行升级、改造的权利.'),
                  yStitle3('(四)甲方存在未按时支付有关费用、不遵守乙方已公布的有关业务规定或存在恶意操作、诋毁、损害乙方声誉等情况的,乙方有权单方终止对甲方提"本软件"系统服务,并保留追究甲方责任的权利.甲方利用乙方"本软件"系统从事违反国家法律法规活动的,乙方将停止为其正常使用.'),
                  yStitle3('(五)乙方有权通过甲方注册信息查询甲方有关业务权限,用于核实甲方身份信息等与业务审核及管理相关的事项.'),
                  yStitle3('(六)甲方在乙方设定的身份标识信息(包括账户账号、脱敏卡号、客户编号、电话或手机号码、客户名称、终端设备信息等) ,并按照甲方在乙方设定的身份认证方式,作为业务凭证.'),
                  yStitle3('(七)乙方因以下情况没有正确执行甲方要求提交的"本软件"系统注册，不承担任何责任:'),
                  yStitle3('1、乙方接收到.上游渠道的指令信息不明、存在乱码、不完整等.'),
                  yStitle3('2、甲方为提供真实信息存在虚假交易成分.'),
                  yStitle3('3、甲方未能按照乙方的有关业务规定正确操作.'),
                  yStitle3('4、甲方的行为出于欺诈或其他非法目的.'),
                  yStitle3('5.由于不可抗力、计算机黑客袭击、系统故障、通讯故障、网络拥堵、供电系统故障、电脑病毒、恶意程序攻击及其它不可归因于乙方的原因,导致甲方未收到或延迟收到乙方发出的与第三方机构交易相关信息,或导致乙方无法正常处理业务指令.因乙方故意或重大过失导致的计算机黑客袭击、系统故障、通讯故障、网络拥堵、供电系统故障、电脑病毒、恶意程序攻击除外.'),
                  yStitle3('(八)若发生可能导致"本软件"系统数据泄漏的事件，为保障甲方账户注册账户安全,乙方有权将该系统作废.乙方应及时通过电话通知方式告知甲方.'),
                  yStitle3('(九)服务有效期内，如甲方(客户)提前解除或终止本协议,应向乙方结清应付款项，已缴纳的剩余期限的服务费用无法提供退款服务.'),
                  yStitle3('(十)如甲方因乙方系统差错、故障或其他原因获得不当得利的,甲方授权乙方从甲方账户中扣划甲方的不当得利所得或暂停对甲方提供服务.'),
                  yStitle2('二、义务'),
                  yStitle3('(一)在乙方系统正常运行情况下,乙方负责及时准确地处理甲方发送业务指令，并及时协助向甲方提供查询交易记录、账户状态等服务.'),
                  yStitle3('(二)乙方对于"本软件"系统所使用的相关软件的合法性承担责任.'),
                  yStitle3('(三)乙方负责及时为甲方办理"本软件"系统注册手续并按甲方注册功能的不同为甲方提供相应的服务.'),
                  yStitle3('(四)乙方负责向甲方提供业务咨询服务,并在乙方网站公布功能介绍、热点解答、相关规则等内容.'),
                  yStitle3('(五)乙方在法律法规许可和甲方授权的范围内使用甲方的资料和交易记录.乙方对甲方提供的申请资料和其他信息有保密的义务,但法律法规另有规定的除外.'),
                  yStitle1('第四条法律适用条款'),
                  yStitle3('本协议的成立、生效、履行和解释,均适用中华人民共和国法律.'),
                  yStitle3('本协议是乙方的其他既有协议和约定的补充而替代文件，如本协议与其他既有协议和约定有冲突,涉及"本软件"系统业务内容的,应以本协议为准.'),
                  yStitle1('第五条差错和争议的解决'),
                  yStitle3('甲方发现自身未按规定操作，或由于自身其他原因造成业务指令未执行、未适当执行、延迟执行的,应及时通过联系客服通知乙方.乙方应积极调查并告知甲方调查结果.'),
                  yStitle3('双方在履行本协议的过程中，如发生争议,应协商解决.协商不成的,任何一方均可向本协议项下乙方经办行所在地人民法院提起诉讼.'),
                  yStitle1('第六条协议的中止和终止'),
                  yStitle3('乙方提供的"本软件"系统服务受甲方注册卡(账户)状态的制约,如该卡(账户)挂失、止付等原因不能使用，相关服务自动中止.甲方注册卡(账户)状态恢复正常时,乙方重新提供相应服务.'),
                  yStitle3('甲方告知乙方办理注销手续完毕,本协议即为终止.'),
                  yStitle3('在甲方违反本协议规定或其他乙方公布的业务规定的情况下,乙方有权中止或终止本协议.协议终止并不意味着终止前所发生的未完成交易指令的撤销,也不能消除因终止前的交易所带来的任何法律后果.'),
                  yStitle1('第七条协议的效力和生效'),
                  yStitle3('本协议的任何条款如因任何原因而被确认无效都不影响本协议其他未受影响条款的效力.本协议自乙方在"本软件"系统为甲方完成注册起生效.'),
                  yStitle3('若甲方注册"本软件”系统后又办理注册银行卡卡片更换,与原注册卡相关的服务事项自动转至新卡,本协议继续有效.'),
                 
                    // yStitlePhone('18328536664', '与我们联系.'),
                ],
              ),
            ),
          ),
        )));
  }
}

Widget yinSititle(String str1) {
  return Container(
    width: ScreenUtil().setWidth(750),
    height: ScreenUtil().setHeight(100),
    child: Center(
      child: Text(
        str1,
        style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.black87,
            fontSize: ScreenUtil().setSp(30)),
      ),
    ),
  );
}

Widget yStitle1(String str1) {
  return Container(
    width: ScreenUtil().setWidth(750),
    margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
    child: Text(
      str1,
      style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black87,
          fontSize: ScreenUtil().setSp(28)),
    ),
  );
}

Widget yStitle2(String str1) {
  return Container(
    width: ScreenUtil().setWidth(750),
    margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
    child: Text(
      str1,
      style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black87,
          fontSize: ScreenUtil().setSp(26)),
    ),
  );
}

Widget yStitle3(String str1) {
  return Container(
    width: ScreenUtil().setWidth(750),
    padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
    margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
    child: Text(
      str1,
      style: TextStyle(color: Colors.black87, fontSize: ScreenUtil().setSp(28)),
    ),
  );
}

Widget yStitlePhone(String phone, String str2) {
  return Container(
    width: ScreenUtil().setWidth(750),
    padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
    margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
    child: Row(
      children: <Widget>[
        Text(
          phone,
          style: TextStyle(
              color: Colors.black87, fontSize: ScreenUtil().setSp(28)),
        ),
        InkWell(
          child: Text(
            str2,
            style: TextStyle(
                color: Colors.black87, fontSize: ScreenUtil().setSp(28)),
          ),
          onTap: () {
            _launchUrl();
          },
        ),
      ],
    ),
  );
}

void _launchUrl() async {
  String url = "tel:" + '18328536664';
  //  String url= 'https://www.jianshu.com/p/77c4b8a84734';
  //  print('leaderPhone'+leaderPhone);
  if (await canLaunch(url)) {
    await launch(url);
    print('leaderPhone==' + url);
  } else {
    throw 'url产生了异常';
  }
}
