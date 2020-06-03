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

class yiSiZhuCePage extends StatelessWidget {
  const yiSiZhuCePage({Key key}) : super(key: key);

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
          title: Text("隐私政策",
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
                  yinSititle("隐私政策"),
                  yStitle1('概述和声明'),
                  yStitle3(
                      '尊敬的九鼎信用APP(以下简称"本软件")用户;本软件的运营主体为:北京上京众创网络科技有限公司;公司联系方式为:邮.箱:2838679484@qq.com;电话:13317089866.'),
                  yStitle3(
                      '为了更好的保护您的个人信息，我们制定了《隐私政策》,请您仔细阅读《隐私政策》并确定了解我们对您个人信息的处理规则.'),
                  yStitle3('本隐私政策生效时间:2020年1月1日.'),
                  yStitle3(
                      '本政策所称本软件,包括与上述公司形成经营、协作联系的关联单位.以_上包括现有或将来设立的符合以上条件的公司主体，我们将按照本政策收集、保护、使用、共享您的个人信息,如国家法律法规或监管政策对本软件及其关联公司、协作单位另有规定,以另行规定、约定的为准.'),
                  yStitle3(
                      '我们收集、使用您的信息是出于遵守国家法律法规的规定以及向您提供服务及提升服务质量的目的(包括支持我们开发新产品或完善已有产品功能,为您和其他用户提供更为优质的服务).若您向我们提供了本政策中列明的信息您可以使用更多的快易花提供的服务,和(或)享受更便捷的客户服务,和(或)让我们更好地保护您的账户信息(或)享受更便捷的客户服务,和(或)让我们更好地保护您的账户信息的影响等.'),
                  yStitle2('一、我们如何收集和使用个人信息'),
                  yStitle2('(一)我们如何收集个人信息'),
                  yStitle3('我们会通过如下三种渠道获取您的个人信息:'),
                  yStitle3(
                      '1、您直接提供的信息:我们可能收集并存储您在使用我们的产品与/或服务时向我们提供的任何信息，包括但不限于您在我们页面中在线填写信息时、解决争议或与我们联系时所提供的信息以及您在使用我们的产品与/或服务过程中产生的交易和活动的信息.'),
                  yStitle3(
                      '2、我们主动收集的信息:在您使用我们本软件及相关服务过程中，我们会收集您的计算机、手机及其他访问设备发送给我们的信息.'),
                  yStitle3(
                      '3、我们从其他来源取得的信息:在取得您同意的前提下，我们还可能从我们关联公司及合作机构及依法成立并合法留存您的相关信息的第三方机构获取您的相关信息.'),
                  yStitle1('(二)我们如何使用个人信息'),
                  yStitle3(
                      '我们收集您信息的目的主要是为了向您提供安全、高效以及个性化的服务体验.我们会出于以下目的使用您的个人信息:'),
                  yStitle3('1、依据法律法规及监管要求以及进行实名制管理'),
                  yStitle3(
                      '1、依据法律法规及监管要求以及进行实名制管理您在使用我们的产品与/或服务时我们需要首先验证您身份的真实性,为此您需要提供您的手机号、身份证件及号码、个人生物识别信息、银行卡信息等验证身份所需的信息我们会将上述信息提交给合法持有您.上述信息的第三方身份验证机构,以便对您所提供信息的准确性进行核对如果您不提供上述信息则无法使用根据中国相关法律法规必须进行实名管理的相关金融服务.'),
                  yStitle3('2、进行资格、信用及偿付能力审核'),
                  yStitle3(
                      '2、进行资格、信用及偿付能力审核您在使用我们的APP内部公开合作机构服务时,合作机构会使用您的个人信息及其他在具体业务开展过程中基于您的同意而采集的险管理及控制,检测、预防及/或修复欺诈或其他潜在的非法活动.如果您不提供上述信息，则无法在您使用我们的产品与/或服务过程中对您的身份、信用及偿付能力进行评估并决定是否提供您所需的服务.您知晓并同意,本软件可以使用您提交或授权而获取的信息、从第三方获取的信息进行服务及提醒,如因此给您带来影响,本软件不承担主要责任.'),
                  yStitle3('3、为您提供您选择的相关服务'),
                  yStitle3(
                      '在您通过本软件使用我们的产品与或服务时,我们会使用您的个人信息及其他在业务具体开展过程中基于您的同意而采集的信息对我们产品与/或服务进行适用性评估、验证身份真实性、处理产品或服务请求以及完成服务指令并向您发送服务通知等如果您不提供上述信息将可能导致我们无法为您提供相关服务.'),
                  yStitle3('4、为使您在本软件的账户个人信息更安全'),
                  yStitle3(
                      '根据您在计算机、手机及其他访问常用设备中对附加功能所做的设置我们会收集和使用您设备中对部分功能进行自主设置这些附加功能包括:'),
                  yStitle3(
                      '(1)获取常用设备ID服务:我们仅收集您常用设备ID编号,当您得本软件出现异常登陆或非常用设备登陆时，我们将无法通过账号和密码进行访问.'),
                  yStitle3(
                      '(2)允许访问相机:访问您的相机是为了使用摄像头扫码、直接拍摄并_上传图片等操作在需要人脸识别的场景下,则需要调用您的摄像头进行人脸的拍摄基于反欺诈的需要，我们在进行贷款授信时将会使用到您的人脸识别信息.'),
                  yStitle3(
                      '(3)允许访问相册:通过开启允许访问相册功能,您可以直接选择手机内的照片或图片进行上传，提供消费证明.'),
                  yStitle2('(三)我们从第三方获得个人信息的情形'),
                  yStitle3(
                      '1、我们可能从第三方获取您授权共享的第三方账户信息，并在您同意本隐私政策后通过第三方账户直接登录并使用我们的产品与/或服务.在符合相关法律和法规规定的前提下,使用您的这些个人信息.'),
                  yStitle3('2、在取得您同意的前提下，我们可能从合法持有您个人信息的第三方机构获得您的个人信息.'),
                  yStitle1('二、我们如何对外提供个人信息'),
                  yStitle2('(一)共享'),
                  yStitle3(
                      '我们承诺对您的信息进行保密除法律法规及监管部门另有规定外，我们仅在以下情形中与第三方共享您的信息,第三方包括我们的关联公司、合作金融机构以及其他合作伙伴.在将信息提供给第三方前,我们将尽商业上合理的努力评估该第三方收集信息的合法性、正当性、必要性.我们会与第三方签订相关法律文件并要求第三方处理您的个人信息时遵守法律法规，尽力要求第三方对您的信息采取保护措施.'),
                  yStitle3(
                      '(1)如您选择参与我们和第三方联合开展的某项活动,我们可能与.其共享活动过程中产生的、为完成活动所必要的信息,以便第三方能及时为您提供服务，我们会将第三方机构通过APP页面或通过其他途径向您明确告知需要向第三方提供何种个人信息;'),
                  yStitle2(
                      '(2)事先获得您明确同意的情况下，我们会在法律法规允许且不违背公序良俗的范围内,依据您的授权范围与第三方共享您的信息.'),
                  yStitle2('(二)转让'),
                  yStitle3('我们不会将您的个人信息转让给任何公司、组织和个人,但以下情况除外:'),
                  yStitle3('1、事先获得您明确的同意或授权;'),
                  yStitle3('2、根据适用的法律法规、法律程序的要求、强制性的行政或司法要求所必须的情况进行提供;'),
                  yStitle3(
                      '3、在涉及合并、收购、资产转让或类似的交易时，如涉及到个人信息转让，我们会要求新的持有您个人信息的公司、组织继续受本隐私政策的约束,否则，我们将要求该公司、组织重新向您征求授权同意.'),
                  yStitle1('(三)公开披露'),
                  yStitle3('我们仅会在以下情况下，且采取符合业界标准的安全防护措施的前提下，才会公开披露您的个人信息:'),
                  yStitle3('1、根据您的需求,在您明确同意的披露方式下披露您所指定的个人信息;'),
                  yStitle3(
                      '2、根据法律、法规的要求、强制性的行政执法、司法、监管部门或行业协会要求所必须提供您个人信息的情况下，我们可能会依，据所要求的个人信息类型和披露方式公开披露您的个人信息在符合法律法规的前提下当我们收到上述披露信息的请求时，我们会要求必须出具与之相应的法律文件,如传票或调查函我们坚信,对于要求我们提供的信息,应该在法律允许的范围内尽可能保持透明，我们对所有的请求都进行了慎重的审查,以确保其具备合法依据,且仅限于执法部.门因特定调查目的且有合法权利获取的数据在法律法规许可的前提下，我们披露的文件均在加密密钥的保护之下.'),
                  yStitle1('三、我们如何保护和保存个人信息'),
                  yStitle2('(一)安全措施'),
                  yStitle3(
                      '1、我们会以业界成熟的安全标准和规范收集、使用、存储和传输用户信息,并通过用户协议和隐私政策告知您相关信息的使用目的和范围.'),
                  yStitle3(
                      '2、我们非常重视信息安全我们建立了完善的信息安全管理制度和内部安全事件处置机制等我们会采取符合业界标准的合理可行的安全措施和技术手段存储和保护您的个人信息,以防止您的信息丢失、遭到被未经授权的访问、公开披露、使用、修改、毁损、丢失或泄漏.我们会采取一切合理可行的措施,保护您的个人信息.我们会使用加密技术确保数据的保密性;我们会使用受信赖的保护机制防止数据遭到恶意攻击.'),
                  yStitle3(
                      '3、我们会对 员工进行数据安全的意识培养和安全能力的培训和考核,加强员工对于保护个人信息重要性的认识，我们部署访问控制机制,对处理个人信息的员工进行身份认证及权限控制,并会与接触您个人信息的员工、合作伙伴签署保密协议,明确岗位职责及行为准则,确保只有授权人员才可访问个人信息若有违反保密协议的行为，会被追究相关责任.'),
                  yStitle3(
                      '4、我们提醒您注意,互联网并非绝对安全的环境当您通过电子邮件、短信等与其他用户交互信息时,不确定第三方软件对信息的传递是否完全加密,请注意确保您个人信息的安全，我们建议您不要通过此类方式发送个人信息以免个人信息泄露.请使用复杂密码,协助我们保证您的账号以及个人信息安全.根据我们的安全管理制度，个人信息泄露、毁损或丢失事件被列为最特大安全事件,一经发生将启动公司最高级别的紧急预案，由[数据与模型部、 技术研发部、法律合规部]等多个部门组成联合应急响应小组处理.'),
                  yStitle2('(二)安全事件通知'),
                  yStitle3(
                      '1、我们会制定网络安全事件应急预案,及时处置系统漏洞、计算机病毒、网络攻击、网络侵入等安全风险,在发生危害网络安全的事件时我们会立即启动应急预案,采取相应的补救措施,并按照规定向有关主管部门门报告.'),
                  yStitle3(
                      '2、在不幸 发生个人信息安全事件后我们将按照法律法规的要求,及时向您告知安全事件的基本情况和可能的影响、我们已采取或将要采取的处理措施、您可自主防范和降低的风险的建议、对您的补救措施等我们将及时将事件相关情况以站内通知、短信通知、电话、邮件等您预留的联系方式告知您,难以逐一告知时我们会采取合理、有效的方式发布公告.同时，我们还将按照监管部门]要求,主动上报个人信息安全事件的处置情况.'),
                  yStitle2('(三)个人信息的保存'),
                  yStitle3(
                      '1、我们将按照法律法规及相关监管规定的具体要求保存您的个人信息，并严格履行相关客户信息保护义务.信息全部存储在中华人民共和国国内.'),
                  yStitle3(
                      '2、如果我们终止服务或运营，我们仍会继续按照法律法规及相关监管规定的具体要求保存您的个人信息,并严格履行相关客户信息保护义务.'),
                  yStitle2('四、您如何管理个人信息'),
                  yStitle3(
                      '我们非常重视您对个人信息的关注,并尽全力保护您对于您个人信息访问、更正、删除以及撤回同意的权利,以使您拥有充分的能力保障您的隐私和安全您的权利包括:'),
                  yStitle3(
                      '1、访问和更正您的个人信息除法律法规规定外,您有权随时访问下沭你的账户信息并有时雨正其中的部分信自且休方式为.诵 过“我的-设置",您可以查询基本信息.'),
                  yStitle3(
                      '(1)对于您在使用我们的产品与/或服务过程中产生的其他个人信息需要访问或更正，请随时联系我们，我们会根据本隐私政策所列明的方式和期限响应您的请求.'),
                  yStitle3(
                      '(2)您无法访问和/或更正的个人信息:除上述列明的信息外,您的部分个人信息我们还无法为您提供访问和/或更正的服务，这些信息主要是为了保证交易安全满足相关强制性法律法规要求所收集的您的设备信息、您使用金融产品时产生的个人信息.'),
                  yStitle3('2、改变您授权同意的范围或撤回您的授权'),
                  yStitle3(
                      '2、改变您授权同意的范围或撤回您的授权您可以通过关闭设备功能、在您的个人设备中进行隐私设置等方式改变部分您授权我们继续收集个人信息的范围或撤回您的授权.您也可以通过注销账户的方式,撤回我们通过本软件继续收集您个人信息的全部授权.请您理解每个业务功能需要一些基本的个人信息才能得以完成，当您撤回同意或授权后，我们无法继续为您提供撤回同意或授权所对应的服务，也不再处理您相应的个人信息.但您撤回同意或授权的决定，不会影响此前基于您的授权而开展的个人信息处理.'),
                  yStitle3('3、注销'),
                  yStitle3(
                      '您可以APP上“设置-注销账户”处申请注销本软件账户或注销您申请的具体某项服务功能.您注销账户后，我们将停止通过本软件为您提供产品与/或服务，并依据您及相关法律法规的要求处理您的个人信息.但如您在我们有欠款尚未结清为不影响您的还款义务并保证出借人的合法权益,您将无法申请注销.'),
                  yStitle1('五、通知和修订'),
                  yStitle3(
                      '1、为给您提供更好的服务以及随着我们业务的发展,本隐私政策也会随之更新.但未经您明确同意我们不会削减您依据本隐私政策所应享有的权利我们会通过在本软件.上发出更新版本并在生效前通过网站公告或以其他适当方式提醒您相关内容的更新，也请您访问本软件以便及时了解最新的隐私政策.'),
                  yStitle3(
                      '2、对于重大变更，我们还会提供更为显著的通知(我们会通过包括但不限于APP公告、短信或在浏览页面做特别提示等方式，说明隐私政策的具体变更内容).'),
                  yStitle1('六、如何联系我们'),
                  yStitle3('如您对本隐私政策或您个人信息的相关事宜有任何问题、意见或建议,请联系在线客服或拨打我们的客服电话'),
                  yStitlePhone('18328536664', '与我们联系.'),
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
