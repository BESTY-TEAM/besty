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
  //late TabController tabController;// = TabController(length: 3, vsync: this, initialIndex: 0);
  int selectedValue = 0;

  final PageController _pageController = PageController();
  int selectedPage = 0;
  final RestorableInt tabIndex = RestorableInt(0);

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    // Ajoutez un écouteur pour détecter les changements d'onglet et ajuster le PageView en conséquence
    _tabController.addListener(() {
      _pageController.animateToPage(
        _tabController.index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });

    // Ajoutez un écouteur pour détecter les changements de page et ajuster l'onglet en conséquence
    _pageController.addListener(() {
      _tabController.index = _pageController.page!.round();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: buildAppBar(),
        body:  PageView(
          //physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
              selectedPage = index;
            });
            // Mettre à jour le TabController pour refléter la page actuelle
            _tabController.animateTo(
                index,
                duration: Duration(microseconds: 10),
                curve: Curves.easeIn
            );
          },
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
      bottom: TabBar(
        //isScrollable: true,
        controller: _tabController,
        //physics: BouncingScrollPhysics(),
        //tabAlignment: TabAlignment.fill,
        labelColor: kContentColorDarkTheme,
        indicatorColor: kContentColorDarkTheme,
        unselectedLabelColor: kContentColorDarkTheme,
        indicatorSize: TabBarIndicatorSize.tab,
        padding: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding * 5),
        onTap: (value) {
              setState(() {
                selectedPage = value;
              });
              _pageController.animateToPage(value,
                  duration: Duration(microseconds: 10), curve: Curves.easeIn);
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
