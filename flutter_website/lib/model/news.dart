class NewsItemModel{
String author;
String title;
String content;
 NewsItemModel({
  this.content,
  this.title,
  this.author,

 });
 factory NewsItemModel.fromJson(dynamic json){
   return NewsItemModel(
     author: json["author"],
     title: json["title"],
     content: json["content"],

   );
 }
}
class NewsListModel{
 List<NewsItemModel> data;
 NewsListModel(this.data);
 factory NewsListModel.formJson(List json){
 return NewsListModel(
  json.map((i) => NewsItemModel.fromJson((i))).toList()
 );
}
}