import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("ㅎㅇ"),
          expandedHeight: MediaQuery.of(context).size.height ,
          flexibleSpace: PageView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Image.network(
                "https://picsum.photos/id/${index + 5}/200/300",
                fit: BoxFit.cover,
              );
            },
          )
        ),
      ],
    );
  }
}
