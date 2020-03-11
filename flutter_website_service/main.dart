import "dart:convert";
import 'dart:io';
import 'data.dart';

main() async {
  var requsetServer =await HttpServer.bind("192.168.0.100", 8080);
  print("http启动");

  await for (HttpRequest request in requsetServer) {
    handleMessage(request);


  }
}
void handleMessage(HttpRequest request){
  try{
    if (request.method == "GET"){
      handleGET(request);
    }else if(request.method == "POST"){
    handlePOST(request);
    }

  }catch(e){
    print("出现异常");
  }
}

void handleGET(HttpRequest request){
  var action = request.uri.queryParameters["action"];
  
  if(action == "getProducts"){
    var page = request.uri.queryParameters["page"];
    print("第$page");

  request.response..statusCode=HttpStatus.ok..write(jsonEncode(products))..close();
  }
  if (action == "getNews"){
    request.response..statusCode=HttpStatus.ok..write(jsonEncode(news))..close();
  }
 if (action == "conactCompay"){
       var msg = request.uri.queryParameters["msg"];
       print("客户留言：$msg");

    request.response..statusCode=HttpStatus.ok..write("提交成功$msg")..close();
  }



}
void handlePOST(HttpRequest request){
  request.response..write("于秀啥屏蔽")..close();
}
