import 'package:flutter/material.dart';
import '../services/contact.dart';
class AboutContactsPage extends StatefulWidget{
  @override
  _AboutContactState createState() => _AboutContactState();

}
class _AboutContactState extends State<AboutContactsPage>{
  TextEditingController controller = TextEditingController();
  void commit(){
    if (controller.text.length == 0){
      showDialog(context: context,builder: (context) => AlertDialog(title: Text("请输入内容"),));
    }else{
      var info = getContactResult(controller.text);
      print(info);

    }

  }
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text("联系我们"),
      ),
      body: Container(
        color:Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/compay.png",fit: BoxFit.cover,),
            SizedBox(
              height: 40.0,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                hintText: "请留言",
                labelText: "请留言",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            SizedBox(
              width: 220,
              height: 48,
              child: RaisedButton(
                child: Text("给我们留言", style: TextStyle(fontSize:16.0, ),),
                color: Colors.redAccent,
                colorBrightness: Brightness.dark,
                padding: EdgeInsets.only(left:20,top:5,right:20,bottom:5),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.0,
                    color: Colors.white,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(4),
                                             
                ), 
                onPressed: () {
                  commit();
                },
              ),

            ),
            
          ],
        ),
        
      ),

    );
  }


}