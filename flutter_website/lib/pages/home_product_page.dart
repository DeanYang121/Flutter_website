import 'package:flutter/material.dart';
import 'package:flutter_website/pages/home_detail_page.dart';
import '../model/product.dart';
import '../utils/utils.dart';
class HomeProductPage extends StatelessWidget{
final ProductListModel list;
HomeProductPage(this.list);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
    width: deviceWidth,
    color: Colors.white,
    padding: EdgeInsets.only(left:7.5,top:10.0,bottom:10.0),
    child: _build(context, deviceWidth),
    );
  }
  Widget _build(BuildContext context,double deviceWitdh){
    double itemWidth = deviceWitdh *168.5/360;
    double imageWidth = deviceWitdh * 110 /360;
    var bgColor = string2Color("#f8f8f8");
    var titleColor = string2Color("#db5d41");
    var subTitleColor = string2Color("#999999");

    List<Widget> listWidget = list.data.map((i){

      return GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeDetailPage(item: i)), 
            );
        },
        child: Container(
        width: itemWidth,
        margin: EdgeInsets.only(bottom:5,left:2),
        padding: EdgeInsets.only(top:10,bottom:7,left: 13),
        color: bgColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(i.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize:15,color:titleColor),
            ),
           Text(i.desc,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize:15,color:subTitleColor),
            ),
            Container(
             alignment: Alignment(0, 0),
             margin: EdgeInsets.only(top:5),
             child: Image.asset(i.imageUrl,width: imageWidth,height: imageWidth,),
            ),

          ],
          
        ),
      ),
      );
    }).toList();
    return Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left:5,bottom:10),
          child: Text("最新产品",
          style: TextStyle(fontSize:16.0,color:Color.fromRGBO(51, 51, 51, 1)),
          ),
        ),
        //流式布局
        Wrap(
          spacing: 2,
          children: listWidget,
        ),
      ],
    );

  }

}
