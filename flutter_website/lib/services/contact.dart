//获取产品列表
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_website/conf/config.dart';
getContactResult(String msg) async{
String url = "http://" + Config.IP + ":" + Config.PORT + "/?action=conactCompay&msg=$msg";
var res = await http.get(url);
String body = res.body;
var info = body;
print(info);
return info;
}