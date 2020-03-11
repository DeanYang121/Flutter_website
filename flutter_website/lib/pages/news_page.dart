import 'package:flutter/material.dart';
import "../model/news.dart";
import '../services/news.dart';
import "news_detail_page.dart";
class NewsPage extends StatefulWidget{
  @override
  _NewsState createState() => _NewsState();

}
class _NewsState extends State<NewsPage>{
NewsListModel listData = NewsListModel([]);
void getNewsList()async{
  var data = await getNewsResult();
  NewsListModel list = NewsListModel.formJson(data);
  setState(() {
    listData.data.addAll(list.data);
  });
}
  @override
  void initState() {
    // TODO: implement initState
    getNewsList();
    super.initState();
  }


  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (BuildContext context,int index) => Divider(height:1.0,color:Colors.grey), 
        itemCount: listData.data.length,
        itemBuilder: (BuildContext context,int index){
          NewsItemModel item = listData.data[index];
          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.content),
            leading: Icon(Icons.fiber_new),
            trailing: Icon(Icons.arrow_forward),
            contentPadding: EdgeInsets.all(10),
            enabled: true,
            onTap: (){
                        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewsDetailPage(item: item)), 
            );

            },
          );

        }
      ), 


    );
  }


}