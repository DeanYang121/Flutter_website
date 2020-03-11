import 'package:flutter/material.dart';
import "../model/product.dart";
import '../style/index.dart';
import 'home_detail_page.dart';
class ProductResultListPage extends StatelessWidget{
  final ProductListModel list;
  final VoidCallback getNextPage;
  ProductResultListPage(this.list,{this.getNextPage});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return list.data.length == 0 ? Center(
      child: CircularProgressIndicator(),
    ):ListView.builder(
      padding: EdgeInsets.symmetric(horizontal:10),
      itemCount: list.data.length,
      itemBuilder: (BuildContext context,int i){
      
      ProductItemModel item = list.data[i];
      if ((i + 4 == list.data.length)){
        getNextPage();
      }
      return GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeDetailPage(item: item)), 
            );

        },
        child: Container(
          color: ProductColors.bgColor,
          padding: EdgeInsets.only(
            top:5.0,
            right:5.0,
          ),
          child:Row(
            children: <Widget>[
              Image.asset(
                item.imageUrl,
                width: 120,
                height: 120,
                ),
                SizedBox(
                 width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: ProductColors.divideLineColor,
                        
                        ),
                      ),
                    
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item.desc,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                             width: 5,
                            ),
                            Text(
                              item.type,
                              style: TextStyle(
                                color:ProductColors.typeColor,
                                fontSize: 16.0,
                              ),
                            ),
                            item.point == null ? SizedBox():Container(
                              child: Text(
                                item.point,
                                style: TextStyle(
                                  color:ProductColors.pointColor,
                                ),
                                ),
                                padding: EdgeInsets.symmetric(horizontal:3),
                                margin: EdgeInsets.only(
                                  left:4,
                                ),
                                decoration: BoxDecoration(
                                  border:Border.all(width:1,color:ProductColors.typeColor),
                                ),
                            ),
                          ],

                        ),
                        Text(
                          item.name,
                          style: ProductFonts.itemNameStype,
                        ),

                      ],

                    ),

                  ),
                ),

            ],
          ),

        ),

      );
    });
  }


}
