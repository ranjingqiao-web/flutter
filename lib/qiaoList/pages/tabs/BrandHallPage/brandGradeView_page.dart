import 'package:flutter/material.dart';
import './listJson.dart';


class gradeViewZiDingYi extends StatelessWidget { 

  // 获取静态数据
 Widget getListData(context,index){
     return  Container(
       child: Row(
         children: <Widget>[
           Image.network(listData[index]['images'],
           width: 50,
           height: 50,
           ),
           Text(listData[index]['text'])
         ],
       ),
     );
 

  //  var tempList=listData.map((value){
  //    return Container(
  //      child: Row(
  //        children: <Widget>[
  //          Image.network(value['images'],
  //          width: 50,
  //          height: 50,
  //          ),
  //          Text(value['text'])
  //        ],
  //      ),
  //    );
  //  });
  // //  map循环后的数据是('111111','2222222')
  // // 所以一定要toList()转换一下
  //  return tempList.toList();
 } 
   @override
  Widget build(BuildContext context) {
    return GridView.builder( 
      itemCount: listData.length ,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder:getListData ,
    //  crossAxisSpacing: 10.0,
    //  mainAxisSpacing: 10.0,
    //  childAspectRatio: 2,
    //  crossAxisCount: 2,
    // //  children: getListData(),
    //  children: <Widget>[
    //    Text('data'),
    //    Text('data'),
    //    Text('data'),
    //    Text('data'),
    //    Text('data'),
    //    Text('data'),
    //    Text('data'),
    //  ],
   );
  }
}


 
  
 