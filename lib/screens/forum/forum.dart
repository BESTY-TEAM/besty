import 'package:besty/constants/assets.dart';
import 'package:besty/screens/forum/components/body.dart';
import 'package:flutter/material.dart';


class ForumScreen extends StatefulWidget {
  const ForumScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ForumScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: buildAppBar(),
        body: const Body(),
      ),
    );
  }


  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: const Color(0xFFFFFFFF),
      flexibleSpace: Stack(
       children: [
        Expanded(
          child: Image.asset(
            Assets.womenBacground,
            width: MediaQuery.of(context).size.width,
            //height: 800,
            fit: BoxFit.cover,
            ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 163,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment(-0.49, 0.87),
              end: Alignment(0.49, -0.87),
              colors: [
                Color(0xFF122D7B), Color(0x26FF6EAB)],
            ),
            ),
          ),
        )
       ],
      ),
      automaticallyImplyLeading: false,
      title: const Text(
        "BESTY FORUM",
        style: TextStyle(),
      ),
      bottom: const TabBar(
        padding: EdgeInsets.only(right: 50),
        tabs: [
          Tab(text: 'Forum',),
          Tab(text: 'Status',),
          Tab(text: 'Meet',),
      ]),
    );
  }
}
