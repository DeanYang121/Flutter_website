import 'package:flutter/material.dart';
import 'dart:async';
class LoadingPage extends StatefulWidget{
  @override
  _LoadingState createState() => _LoadingState();

}
class _LoadingState extends State<LoadingPage>{
  @override
  void initState(){
    super.initState();
    //加载页面3s
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Center(
        child: Stack(
          children: <Widget>[
            Image.asset("assets/images/loading.jpg"
            ),
            Center(
              child: Text("Flutter企业站",
              style: TextStyle(
                color: Colors.red,
                fontSize: 36.0,
                decoration: TextDecoration.none,
              ),),
            ),
          ],
          
        ),
      ),
    );
  }


}