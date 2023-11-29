import 'package:besty/constants/constants.dart';
import 'package:besty/constants/assets.dart';
import 'package:besty/screens/forum/components/chat_forum.dart';
import 'package:besty/screens/forum/components/status.dart';
import 'package:flutter/material.dart';
import 'components/meet.dart';


class ForumScreen extends StatefulWidget {
  const ForumScreen({Key? key}) : super(key: key);

  @override
  State<ForumScreen> createState() => _ChatsScreenState();
}
//TickerProviderStateMixin, with SingleTickerProviderStateMixin, RestorationMixin
class _ChatsScreenState extends State<ForumScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;//= TabController(length: 3, vsync: this, initialIndex: 0);
  int selectedValue = 0;
  //int currentIndex = 0;
  final RestorableInt tabIndex = RestorableInt(0);

  //@override
  //String get restorationId => 'tab_scrollable_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    //registerForRestoration(tabIndex, 'tab_index');
    tabController!.index = tabIndex.value;
  }
/*
  @override
  void initState() {
    tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    tabController!.addListener(() {
      // When the tab controller's value is updated, make sure to update the
      // tab index value, which is state restorable.
      //setState(() {
        //tabIndex.value = tabController!.index;
      //});
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    tabController = TabController(length: 3, initialIndex: 0, vsync: this);
    tabIndex.dispose();
    super.dispose();
  }
*/
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);//as PageController;
    //tabController = TabController(length: 3, initialIndex: 0, vsync: this);
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
        body:  TabBarView(
          physics: const NeverScrollableScrollPhysics(), controller: tabController,
          //dragStartBehavior: DragStartBehavior.start,
          children: const [
            ChatForumScreen(),
            //ChatForumScreen(),
            //ChatForumScreen(),
            ActusScreen(),
            MeetScreen(),
          ],
        ),
      )
    );
  }


  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 80,
      automaticallyImplyLeading: true,
      backgroundColor: const Color(0xFFFFFFFF),
      flexibleSpace: Stack(
       children: [
        //Expanded(
          //child:
          Image.asset(
            Assets.womenBacground,
            width: MediaQuery.of(context).size.width,
            //height: 800,
            fit: BoxFit.cover,
            ),
        //),
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
      title:  ListTile(
        title:  Text(
          "BESTY FORUM",
          //textAlign: TextAlign.left,
          style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(
              color: kContentColorDarkTheme,
              fontWeight: FontWeight.w500,
            )
          /*TextStyle(
            fontWeight: FontWeight.w800,
            color: kContentColorDarkTheme
          ),*/
        ),
        subtitle: Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.25),
          child: Text(
            "Share your Experience with other",
            style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(
              //fontFamily: 'nunito',
              color: kContentColorDarkTheme,
              //fontWeight: FontWeight.w500,
              //height: 0.10,
              letterSpacing: -0.24,
            ),
            /*TextStyle(
                fontWeight: FontWeight.w500,
                color: kContentColorDarkTheme
            ),*/
          ),
        ),
        //trailing: Text("860m - 28min"),
      ),
      /*Text.rich(
        textSpan : TextSpan(
          text: "BESTY FORUM",

        //style: TextStyle(),
      ),
    )*/
      bottom: TabBar(
        isScrollable: true,
        labelColor: kContentColorDarkTheme,
        indicatorColor: kContentColorDarkTheme,
        unselectedLabelColor: kContentColorDarkTheme,
        indicatorSize: TabBarIndicatorSize.tab,
        padding: const EdgeInsets.only(/*left: kDefaultPadding,*/ right: kDefaultPadding * 10),
        onTap: (value) {
              setState(() {
                selectedValue = value;
              });
              tabController.animateTo(value,);
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
