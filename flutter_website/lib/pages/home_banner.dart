import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class BannerWidget extends StatelessWidget{
  List<String> banners = <String>[
    "assets/banners/1.png",
    "assets/banners/2.png",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double width = MediaQuery.of(context).size.width;
    double height = width * 540.0 / 1080.0;
    return Container(
      width: width,
      height: height,
      child: Swiper(
        itemBuilder: (BuildContext content,index){
          return Container(
            margin: EdgeInsets.only(left: 5,right: 5,top: 5),
            child: Image.asset(
              banners[index],
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),

          );
        },
        itemCount: banners.length,
        scrollDirection: Axis.horizontal,
        autoplay: true,
        duration: 3,
      ),

    );
  }  

}
