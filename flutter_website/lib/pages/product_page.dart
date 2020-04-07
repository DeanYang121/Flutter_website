import 'package:flutter/material.dart';
import "../model/product.dart";
import '../services/product.dart';
import 'product_list_page.dart';
class ProductPage extends StatefulWidget{
  @override
  _ProductState createState() => _ProductState();

}
class _ProductState extends State<ProductPage>{
ProductListModel listData = ProductListModel([]);
int page = 0;
void getProductList()async{
  var data = await getProductResult(page++);
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
        title: Text("产品"),
      ),

      body: ProductResultListPage(listData,getNextPage:()=> getProductList()),
    );
  }


}