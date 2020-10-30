import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            forceElevated: true,
            floating: true,
            // pinned: true,
            expandedHeight: 100.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Simple Budget'),
            ),
            leading: IconButton(
              icon: Icon(Icons.settings),
              iconSize: 30.0,
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.add),
                iconSize: 30.0,
                onPressed: () {},
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                height: 100,
                color: Colors.yellow,
              );
            }, childCount: 10),
          )
        ],
      ),
    );
  }
}
