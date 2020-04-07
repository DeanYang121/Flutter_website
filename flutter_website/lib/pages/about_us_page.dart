import 'package:flutter/material.dart';
import 'about_contact_page.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class AboutusPage extends StatefulWidget{
  @override
  _AboutusState createState() => _AboutusState();

}
class _AboutusState extends State<AboutusPage>{
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
            appBar: AppBar(
        title: Text("关于我们"),
      ),

      body: Container(
        color:Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/compay.png",fit: BoxFit.cover,),
            ListTile(
            leading: Icon(Icons.message),
            title: Text("公司介绍"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => WebviewScaffold(
                        url: "https://www.baidu.com",
      appBar: AppBar(
        title: Text("公司介绍"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              
              Navigator.pop(context);
            }),
      ),

                )
                ));
              
           }
            ),
            Divider(
              height: 10,
              color: Colors.grey,
            ),
                        ListTile(
            leading: Icon(Icons.info),
            title: Text("公司优势"),
            ),
            Divider(
              height: 10,
              color: Colors.grey,
            ),
            ListTile(
            leading: Icon(Icons.phone),
            title: Text("联系我们"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutContactsPage()));



            },

            ),
            Divider(
              height: 10,
              color: Colors.grey,
            ),

            
          ],
        ),
        
      ),

    );
  }


}