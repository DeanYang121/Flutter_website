import 'dart:core';


import 'package:flutter/material.dart';

/// 质感设计样式
class ServerPage extends StatefulWidget {
  const ServerPage();
  @override
  ServerPageState createState() => ServerPageState();
}

class ServerPageState extends State<ServerPage> {
  ServerPageState();

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            elevation: 0.0,
            title: Text(
              '客服中心',
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[],
          ),
          SliverPadding(
              padding: const EdgeInsets.all(0.0),
              sliver: new SliverList(
                  delegate: new SliverChildListDelegate(<Widget>[
                    Container(
                      child: Text('请联系微信15817351609'),
                    )
                  ])))
        ]));
  }
}
