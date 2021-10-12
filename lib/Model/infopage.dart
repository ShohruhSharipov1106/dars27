import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  String img, title, description;
  InfoPage(this.img, this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        expandedHeight: 300.0,
        title: Text(
          this.title,
          style: TextStyle(
            backgroundColor: Colors.grey[500],
            color: Colors.black,
          ),
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: Image.network(
            this.img,
            fit: BoxFit.cover,
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate(
          [
            SizedBox(height: 100.0),
            SizedBox(
              child: Text(this.description),
            ),
          ],
        ),
      ),
    ]));
  }
}
