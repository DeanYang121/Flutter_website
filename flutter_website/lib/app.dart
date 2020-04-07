import 'package:flutter/material.dart';
import 'pages/about_us_page.dart';
import 'pages/home_page.dart';
import 'pages/news_page.dart';
import 'pages/product_page.dart';
class App extends StatefulWidget{
  @override
  _AppState createState() => _AppState();

}
class _AppState extends State<App>{
  @override
  //当前选择页面的索引
  var _currentIndex = 0;
  HomePage homePage;
  ProductPage productPage;
  NewsPage newsPage;
  AboutusPage aboutusPage;
  currentPage(){
    switch(_currentIndex){
      case 0:
        if (homePage == null){
          homePage = HomePage();
        }
        return homePage;
      case 1:
        if (productPage == null){
          productPage = ProductPage();
        }
        return productPage;
      case 2:
        if (newsPage == null){
          newsPage = NewsPage();
        }
        return newsPage;
      case 3:
        if (aboutusPage == null){
          aboutusPage = AboutusPage();
        }
        return aboutusPage;


    }
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: currentPage(),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
          ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text("产品")
          ),
            BottomNavigationBarItem(
                icon: Icon(Icons.fiber_new),
                title: Text("新闻")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_comment),
                title: Text("关于我们")
            )],
          type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index){
          setState(() {
            _currentIndex = index;
          });
        }),


      ),
    );
  }


}