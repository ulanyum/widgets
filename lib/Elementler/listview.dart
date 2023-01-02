import 'package:flutter/material.dart';

class Listviews extends StatelessWidget {
  Listviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RefreshIndicator(
        color: Colors.amberAccent,
        onRefresh: () async {
          Future<void>.delayed(const Duration(seconds: 4));
        },
        child: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(20),
            children: [
              Text("item1", style: Theme.of(context).textTheme.headline2),
              Text("item2", style: Theme.of(context).textTheme.headline2),
              Text("item3", style: Theme.of(context).textTheme.headline2),
              Text("item4", style: Theme.of(context).textTheme.headline2),
              Text("item5", style: Theme.of(context).textTheme.headline2),
              Text("item6", style: Theme.of(context).textTheme.headline2),
              Text("item7", style: Theme.of(context).textTheme.headline2),
              Text("item8", style: Theme.of(context).textTheme.headline2),
              Text("item9", style: Theme.of(context).textTheme.headline2),
              Text("item10", style: Theme.of(context).textTheme.headline2),
              Text("item11", style: Theme.of(context).textTheme.headline2),
              Text("item12", style: Theme.of(context).textTheme.headline2),
              Text("item13", style: Theme.of(context).textTheme.headline2),
              Text("item14", style: Theme.of(context).textTheme.headline2),
              Text("item15", style: Theme.of(context).textTheme.headline2),
            ],
          ),
        ),
      ),
    );
  }
}
