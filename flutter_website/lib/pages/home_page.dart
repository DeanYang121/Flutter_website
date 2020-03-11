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
      body: ListView(
        children: <Widget>[
          BannerWidget(),
          HomeProductPage(listData),
        ],
        
      
      ),
    );
  }


}