import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Commom/backgroundFontColor.dart';

// 额度太低怎么办?
// 点击“临时提额”通过向服务商申请，可临时提高
// 使用额度，使用完成或计划终止，临时额度将会自动收回。
// 额度冻结怎么办?
// 额度被冻结，可能是您再系统有逾期订单，请及时还款后释放额度。
// 是否有人工审核?
// 固定额度是由系统根据您的综合评分给出额度,申请临时额度时，如发现您申请信息异常或错误，我们可能会与您联系。
// 申请额度失败是什么原因?
// 系统根据您的使用状况以及综合情况给出额度,申请没有通过请不要灰心，通过您在系统的使用记录，我们会定期更新最新额度，请您持续关注!
// 如何快速提升额度?
// 1、分享好友使用APP，提高团队交易量，提升活跃度。2、杜绝预期,保持良好还款习惯，按时还款。
// 借款需要哪些条件?
// 1、年龄18周岁-60周岁之间;2、第二代居民身份证;3、银行借记卡一张;
// 借款对征信有哪些影响?
// 系统已给出额度的用户，使用借款无需查询征信。延迟还款超过7日未还款的，我们将依据借款协议.上送征信记录。
// 我已使用了一笔借款，还可以再借吗?
// 在您没超过系统给出的借款总额情况下，可以循环使用借款额度，您可以同时或分次使用多笔借款。并且每结清一笔借款后您的额度会正常恢复。

// 该平台由以下正规持牌小贷机构提供资金服务
// 湖北楚天小额贷款股份有限公司(股票代码: DXF)
// 江西赣江新区多来点网络小额贷款有限公司
// 技术支持:武汉市钱袋宝商务信息服务有限公司

Widget expansionPanelDemo() {
  var listData = [
    {
      'title': '额度太低怎么办?',
      'content': '点击“临时提额”通过向服务商申请，可临时提高使用额度，使用完成或计划终止，临时额度将会自动收回。'
    },
    {'title': '额度冻结怎么办?', 'content': '额度被冻结，可能是您再系统有逾期订单，请及时还款后释放额度。'},
    {
      'title': '是否有人工审核?',
      'content': '固定额度是由系统根据您的综合评分给出额度,申请临时额度时，如发现您申请信息异常或错误，我们可能会与您联系。'
    },
    {
      'title': '申请额度失败是什么原因?',
      'content':
          '系统根据您的使用状况以及综合情况给出额度,申请没有通过请不要灰心，通过您在系统的使用记录，我们会定期更新最新额度，请您持续关注!'
    },
    {
      'title': '如何快速提升额度?',
      'content': '1、分享好友使用APP，提高团队交易量，提升活跃度。2、杜绝预期,保持良好还款习惯，按时还款。'
    },
    {'title': '借款需要哪些条件?', 'content': '1、年龄18周岁-60周岁之间;2、第二代居民身份证;3、银行借记卡一张;'},
    {
      'title': '借款对征信有哪些影响?',
      'content': '系统已给出额度的用户，使用借款无需查询征信。延迟还款超过7日未还款的，我们将依据借款协议.上送征信记录。'
    },
    {
      'title': '我已使用了一笔借款，还可以再借吗?',
      'content':
          '在您没超过系统给出的借款总额情况下，可以循环使用借款额度，您可以同时或分次使用多笔借款。并且每结清一笔借款后您的额度会正常恢复。'
    },
    {
      'title': '额度太低怎么办?',
      'content': '点击“临时提额”通过向服务商申请，可临时提高使用额度，使用完成或计划终止，临时额度将会自动收回。'
    },
  ];
  List<Widget> tiles = []; //先建一个数组用于存放循环生成的widget
  Widget content; //单独一个widget组件，用于返回需要生成的内容widget
  for (var val in listData) {
    tiles.add(Container(
      width: ScreenUtil().setWidth(750),
      decoration: BoxDecoration(color: YColors.homePageBColor),
      child: Center(
        child: Container(
          width: ScreenUtil().setWidth(700),
          margin: EdgeInsets.only(bottom: 20.0),
          decoration: BoxDecoration(
              color: YColors.homePageTopFontColor,
              borderRadius: BorderRadius.circular(8.0)),
          child: ExpansionTile(
            title: Text(
              val['title'],
              style: TextStyle(color: YColors.homePageTopBackGroundColor),
            ),
            // leading: Icon(Icons.favorite,color: Colors.white,),
            // backgroundColor: YColors.homePageTopXinShouHui,
            initiallyExpanded: false, //默认是否展开
            children: <Widget>[
              ListTile(
                title: Text(
                  val['content'],
                ),
                // leading: Icon(Icons.favorite_border,color: Colors.white,),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  content = new Column(
      children: tiles //重点在这里，因为用编辑器写Column生成的children后面会跟一个<Widget>[]，
      //此时如果我们直接把生成的tiles放在<Widget>[]中是会报一个类型不匹配的错误，把<Widget>[]删了就可以了
      );
  return content;
}
