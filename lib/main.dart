import 'package:flutter/material.dart';
import 'package:pageview_app/anoter_page.dart';
import 'package:pageview_app/other_page.dart';
import 'package:pageview_app/teacher_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // scrollDirection: Axis.horizontal,
      slivers: [
        SliverAppBar(
          actions: [
            IconButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnotherPage())
              );
            }, icon: Icon(Icons.account_box_rounded)),
            IconButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeacherPage())
              );
            }, icon: Icon(Icons.star)),
            IconButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtherPage())
              );
            }, icon: Icon(Icons.ac_unit_outlined))
          ],
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: Container(
              child: Image.network(
                "https://picsum.photos/id/1/300/300",
                fit: BoxFit.cover,
              ),
            )),
        SliverToBoxAdapter(
          child: Container(height: 500, color: Colors.red),
        ),
        SliverToBoxAdapter(
          child: Container(height: 500, color: Colors.blue),
        )
      ],
    );
  }

  SliverList buildSliverList() {
    return SliverList(delegate: SliverChildBuilderDelegate(
      (context, index) {
        return Container(
          height: 100,
          alignment: Alignment.center,
          color: Colors.lightBlue[100 * (index % 9)],
          child: Text("List item $index"),
        );
      },
    ));
  }

  PageView buildPageView() {
    return PageView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Image.network(
          "https://picsum.photos/id/${index + 1}/200/300",
          fit: BoxFit.cover,
        );
      },
    );
  }
}
