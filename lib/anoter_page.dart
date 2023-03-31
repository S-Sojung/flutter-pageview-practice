import 'dart:ffi';

import 'package:flutter/material.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        Container(
          constraints: BoxConstraints(maxHeight: 80),
          child: AppBar(
            title: Text("어서오세요"),
            backgroundColor: Color.fromRGBO(0, 0, 0, 0),
            shadowColor: Color.fromRGBO(0, 0, 0, 0),
          ),
        )
      ],
    );
  }
}
