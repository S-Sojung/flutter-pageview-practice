import 'package:flutter/material.dart';

class TeacherPage extends StatelessWidget {
  const TeacherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double appBarHeight = screenHeight * 0.1; // AppBar 높이 계산
    // return _thirdBuild(appBarHeight);
    return _secondBuild();
    // return _firstBuild(appBarHeight);
  }

  Widget _thirdBuild(double appBarHeight) {
    return Stack(
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
        Positioned( // IgnorePointer
          left: 0,
          top: 0,
          right: 0,
          height: appBarHeight,
          child: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("Around"),
            leading: IconButton(
              onPressed: () {
                print("클릭됨");
              },
              icon: Icon(Icons.menu),
            ),
          ),
        ),
      ],
    );
  }

  Widget _secondBuild() {
    return PageView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
              NetworkImage("https://picsum.photos/id/${index + 1}/200/300"),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text("Around"),
              leading: Icon(Icons.menu),
            ),
            body: Center(
              child: Text("Page ${index + 1}"),
            ),
          ),
        );
      },
    );
  }

  // Sliver의 expandedHeight 사용하기
  Widget _firstBuild(double screenHeight) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text("Around"),
            expandedHeight: screenHeight,
            flexibleSpace: PageView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Image.network(
                  "https://picsum.photos/id/${index + 1}/200/300",
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}