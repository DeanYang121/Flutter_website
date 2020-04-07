import 'package:flutter/material.dart';
import 'home_banner.dart';
import '../services/product.dart';
import '../model/product.dart';
import 'home_product_page.dart';
class HomePage extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();

}
class _HomeState extends State<HomePage>{
  ProductListModel listData = ProductListModel([]);
  void getProductList()async{
    var data = await getProductResult();
    ProductListModel list = ProductListModel.formJson(data);
    setState(() {
      listData.data.addAll(list.data);
      
    });

  }
  @override
  void initState() {
    // TODO: implement initState
    getProductList();
    super.initState();
  }

  @override
  
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
            appBar: AppBar(
        title: Text("企业站实战"),
        leading: Icon(Icons.home),
        actions: <Widget>[
          Padding(
            padding:EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(Icons.search),
            ),

          ),

        ],

      ),

      body: ListView(
        children: <Widget>[
          BannerWidget(),
          HomeProductPage(listData),
        ],
        
      
      ),
    );
  }


}