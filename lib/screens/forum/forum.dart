import 'package:besty/constants/constants.dart';
import 'package:besty/constants/assets.dart';
import 'package:besty/screens/forum/components/chat_forum.dart';
import 'package:besty/screens/forum/components/status.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'components/meet.dart';


class ForumScreen extends StatefulWidget {
  const ForumScreen({Key? key}) : super(key: key);

  @override
  State<ForumScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ForumScreen> with TickerProviderStateMixin {
  late TabController tabController;//= TabController(length: 3, vsync: this, initialIndex: 0);
  int selectedValue = 0;
  int currentIndex = 0;

   @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, initialIndex: 0, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: buildAppBar(),
        body: SizedBox(
            //height: MediaQuery.of(context).size.height,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              dragStartBehavior: DragStartBehavior.start,
              children: const [
                ChatForumScreen(),
                ActusScreen(),
                MeetScreen(),
              ],
            ),
          )
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
              begin:  Alignment(-0.49, 0.87),
              end:  Alignment(0.49, -0.87),
              colors: [
                kSecondaryColor, Color(0x26FF6EAB)],
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
      bottom:  TabBar(
        //isScrollable: true,
        indicatorColor: kContentColorDarkTheme,
        indicatorSize: TabBarIndicatorSize.tab,
        padding: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding * 5),
        onTap: (value) {
              setState(() {
                selectedValue = value;
              });
              tabController.animateTo(value);
            },
        tabs: const [
          Tab(
            text: 'Forum',
            //height: 80,
          ),
          Tab(text: 'Status',),
          Tab(text: 'Meet',),
      ]),
      
    );
  }
}
