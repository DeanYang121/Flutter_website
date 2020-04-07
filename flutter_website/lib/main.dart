import 'package:flutter/material.dart';
import 'loading.dart';
import 'app.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Flutter企业站实战",
  //自定义主题
  theme: mDefaultTheme,
  routes:<String,WidgetBuilder>{
    "app":(BuildContext context) => App(),
  },
  home: LoadingPage(),
  
  
));
final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Colors.redAccent,
);