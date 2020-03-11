class ProductItemModel{
String desc;
String type;
String imageUrl;
String name;
String point;
 ProductItemModel({
  this.desc,
  this.name,
  this.imageUrl,
  this.type,
  this.point,

 });
 factory ProductItemModel.fromJson(dynamic json){
   return ProductItemModel(
     desc: json["desc"],
     name: json["name"],
     imageUrl: json["imageUrl"],
     type: json["type"],
     point:json["point"],

   );
 }
}
class ProductListModel{
 List<ProductItemModel> data;
 ProductListModel(this.data);
 factory ProductListModel.formJson(List json){
 return ProductListModel(
  json.map((i) => ProductItemModel.fromJson((i))).toList()
 );
}
}