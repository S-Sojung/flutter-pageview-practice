import 'dart:ffi';

import 'package:flutter/material.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                // borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
                child: UserAccountsDrawerHeader(
                  // margin: EdgeInsets.only(bottom: 0),
                  accountName: Text("이름"),
                  accountEmail: Text("개인정보"),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextButton(onPressed: () {}, child: Text("이름")),
                    TextButton(onPressed: () {}, child: Text("개인정보")),
                    TextButton(onPressed: () {}, child: Text("즐거움")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          PageView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Image.network(
                "https://picsum.photos/id/${index + 1}/200/300",
                fit: BoxFit.cover,
              );
            },
          ),
          Container(
            constraints: BoxConstraints(maxHeight: 80),
            child: AppBar(
                title: Text("어서오세요"), backgroundColor: Colors.transparent),
          )
        ],
      ),
    );
  }
}
