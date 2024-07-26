import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _sliverAppBar(),
        _sliverList()
      ],
    ));
  }

  _sliverAppBar() {
    return SliverAppBar(
      backgroundColor: Colors.red,
      pinned: true,
      expandedHeight: 200,
      leading: IconButton(onPressed: () {},
        icon: Icon(Icons.arrow_back,color: Colors.white,),
      ),
      flexibleSpace: FlexibleSpaceBar(
        title: Padding(
          padding: EdgeInsets.only(top: 5,left: 40),
          child: Text("Manchester United",style: TextStyle(color: Colors.white,fontSize: 18),),
        ),
        background: Image(image:AssetImage("assets/images/mu.jpeg"),
        fit: BoxFit.cover,),
      ),
    );
  }

  _sliverList() {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return ListTile(
        title: Text("Item $index"),
      );
    }, childCount: 20));
  }
}
